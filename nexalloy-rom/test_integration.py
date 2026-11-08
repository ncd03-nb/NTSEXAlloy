# SPDX-License-Identifier: GPL-3.0-only
import hashlib, importlib.util, tempfile, unittest
from pathlib import Path

HERE=Path(__file__).resolve().parent
def module(name,path):
    spec=importlib.util.spec_from_file_location(name,path)
    mod=importlib.util.module_from_spec(spec);spec.loader.exec_module(mod);return mod
integration=module('integration',HERE/'install.py')
removal=module('removal',HERE/'remove-vector.py')

class IntegrationTest(unittest.TestCase):
    def setUp(self):
        self.temp=tempfile.TemporaryDirectory();self.root=Path(self.temp.name)
    def tearDown(self):self.temp.cleanup()
    def put(self,rel,text='preserve'):
        p=self.root/rel;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(text);return p
    def test_vector_removal_preserves_other_policy_and_files(self):
        for rel in removal.ROM_PATHS:self.put(rel+'/file' if not rel.endswith('.rc') else rel)
        policy=self.put('system_ext/etc/selinux/system_ext_sepolicy.cil','other\n; NTVector begin\n(type ntvectord)\n; NTVector end\n')
        self.put('system_ext/etc/selinux/mapping/34.0.cil','mapping')
        keep=self.put('system_ext/framework/NTPartitionService.jar','unchanged')
        self.put('config/system_ext_fs_config','system_ext/etc/ntvector/file 0 0 0644\nsystem_ext/bin/ntpartitiond 0 0 0755\n')
        removal.remove(self.root,'34.0')
        self.assertFalse(any((self.root/x).exists() for x in removal.ROM_PATHS))
        self.assertEqual(policy.read_text(),'other\n');self.assertEqual(keep.read_text(),'unchanged')
        self.assertEqual((self.root/'config/system_ext_fs_config').read_text(),'system_ext/bin/ntpartitiond 0 0 0755\n')
        digest=hashlib.sha256(policy.read_bytes()+b'mapping').hexdigest()
        self.assertEqual((policy.parent/'system_ext_sepolicy_and_mapping.sha256').read_text().strip(),digest)
        before={p.relative_to(self.root):p.read_bytes() for p in self.root.rglob('*') if p.is_file()}
        removal.remove(self.root,'34.0')
        self.assertEqual(before,{p.relative_to(self.root):p.read_bytes() for p in self.root.rglob('*') if p.is_file()})
    def test_symlink_escape_is_rejected_before_removal(self):
        outside=self.root.parent/(self.root.name+'-outside');outside.mkdir()
        try:
            p=self.root/'system_ext/etc';p.mkdir(parents=True)
            try:(p/'ntvector').symlink_to(outside,target_is_directory=True)
            except OSError:self.skipTest('Host cannot create symlinks')
            with self.assertRaises(ValueError):removal.remove(self.root)
            self.assertTrue(outside.is_dir())
        finally:outside.rmdir()
    def test_payload_contains_engine_but_no_module_apk(self):
        files=integration.verify()
        self.assertIn('ntmanager/NTModernBridge.dex',files)
        self.assertFalse(any(x.endswith('.apk') for x in files))
    def test_concrete_escaped_vector_contexts_removed_without_siblings(self):
        fc=self.put('config/system_ext_file_contexts',
            '/system_ext/app/Vector/Vector\\.apk u:object_r:system_file:s0\n'
            '/system_ext/etc/init/ntvector\\.rc u:object_r:system_file:s0\n'
            '/system_ext/etc/ntvector/dist/vector/manager\\.apk u:object_r:system_file:s0\n'
            '/system_ext/app/VectorOther/Other\\.apk u:object_r:system_file:s0\n')
        removal.remove(self.root)
        self.assertEqual(fc.read_text(),'/system_ext/app/VectorOther/Other\\.apk u:object_r:system_file:s0\n')
    def fixture(self):
        self.put('classes.dex.out/android/content/ContentProvider$Transport.smali','''.class Landroid/content/ContentProvider$Transport;
.method public call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;
    invoke-direct {p0, p2}, Landroid/content/ContentProvider$Transport;->validateIncomingAuthority(Ljava/lang/String;)V
    const/4 v0, 0x0
    return-object v0
.end method
''')
        return self.put('classes2.dex.out/android/security/ntmanager/NTHooks.smali','''.class Landroid/security/ntmanager/NTHooks;
.method public static initContext(Landroid/content/Context;)V
    .registers 8
    return-void
.end method
''')
    def test_framework_patch_is_idempotent_and_has_one_entrypoint(self):
        hook=self.fixture();integration.patch_framework(self.root)
        before={p.relative_to(self.root):p.read_bytes() for p in self.root.rglob('*') if p.is_file()}
        integration.patch_framework(self.root)
        self.assertEqual(before,{p.relative_to(self.root):p.read_bytes() for p in self.root.rglob('*') if p.is_file()})
        self.assertEqual(hook.read_text().count('NexAlloyRuntime;->init('),1)
        provider=self.root/'classes.dex.out/android/content/ContentProvider$Transport.smali'
        self.assertIn(':nt_original_provider_call\n    iget-object v0, p0,',provider.read_text())
    def test_unknown_transport_layout_rejected(self):
        self.fixture();p=self.root/'classes.dex.out/android/content/ContentProvider$Transport.smali'
        p.write_text(p.read_text().replace('.registers 8','.registers 22'))
        with self.assertRaises(ValueError):integration.patch_framework(self.root)
        self.assertFalse((self.root/'ntmanager').exists())
    def test_sdk_uses_framework_not_vendor_or_launch_api(self):
        self.put('system/system/build.prop','ro.build.version.sdk=34\nro.product.first_api_level=30\n')
        self.put('vendor/build.prop','ro.vendor.build.version.sdk=30\n')
        self.assertEqual(integration.framework_sdk(self.root),34)
        self.assertEqual(integration.framework_sdk(self.root,37),37)
    def test_manager_installed_from_android14_through_android17(self):
        for sdk in (34,35,36,37):
            with self.subTest(sdk=sdk):
                self.put('system/system/build.prop',f'ro.build.version.sdk={sdk}\n')
                (self.root/'system_ext').mkdir(exist_ok=True)
                (self.root/'config').mkdir(exist_ok=True)
                integration.install(self.root)
                self.assertEqual((self.root/'system_ext/app/NexAlloyManager/NexAlloyManager.apk').read_bytes(),
                                 (HERE/'app/NexAlloyManager.apk').read_bytes())
    def test_android13_skips_framework_and_removes_old_manager(self):
        self.put('system/system/build.prop','ro.build.version.sdk=33\n')
        self.put('system_ext/app/NexAlloyManager/NexAlloyManager.apk','old')
        other=self.put('system_ext/app/NexAlloyManagerOther/Other.apk','keep')
        self.put('config/system_ext_fs_config','system_ext/app/NexAlloyManager 0 0 0755\nsystem_ext/app/NexAlloyManagerOther 0 0 0755\n')
        self.fixture()
        hook=self.root/'classes2.dex.out/android/security/ntmanager/NTHooks.smali';before=hook.read_bytes()
        integration.patch_framework(self.root,33)
        self.assertEqual(hook.read_bytes(),before)
        integration.install(self.root)
        self.assertFalse((self.root/'system_ext/app/NexAlloyManager').exists())
        self.assertEqual(other.read_text(),'keep')
        self.assertEqual((self.root/'config/system_ext_fs_config').read_text(),'system_ext/app/NexAlloyManagerOther 0 0 0755\n')
    def test_unknown_sdk_refuses_before_modifying_tree(self):
        marker=self.put('system_ext/app/Vector/Vector.apk','keep until SDK known')
        with self.assertRaises(ValueError):integration.install(self.root)
        self.assertEqual(marker.read_text(),'keep until SDK known')

if __name__=='__main__': unittest.main()
