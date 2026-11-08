package com.hma.nexalloy

import android.content.Context
import android.content.Intent
import android.graphics.drawable.Drawable
import android.net.Uri
import android.os.Bundle
import android.provider.Settings

object NexAlloyStore {
    const val MODULE = "io.github.chsbuffer.revancedxposed"
    const val RELEASE_URL = "https://github.com/gnadgnaoh/NexAlloy-XES/releases"
    data class App(val packageName: String, val name: String, val icon: Drawable?, val installed: Boolean, val selected: Boolean)
    data class State(val installed: Boolean, val enabled: Boolean, val version: String, val apps: List<App>)
    private fun call(context: Context, method: String, arg: String? = null, value: Boolean? = null): Bundle =
        context.contentResolver.call(Uri.parse("content://settings"), "nt.nexalloy.$method", arg,
            value?.let { Bundle().apply { putBoolean("value", it) } }) ?: error(context.getString(R.string.runtime_missing))
    fun load(context: Context): State = decode(context, call(context, "manager"))
    fun change(context: Context, method: String, pkg: String? = null, value: Boolean? = null): State =
        decode(context, call(context, method, pkg, value))
    private fun decode(context: Context, data: Bundle): State {
        val selected = data.getStringArrayList("selected").orEmpty().toSet()
        val pm = context.packageManager
        val apps = data.getStringArrayList("scope").orEmpty().distinct().map { pkg ->
            val info = runCatching { pm.getApplicationInfo(pkg, 0) }.getOrNull()
            App(pkg, info?.let { pm.getApplicationLabel(it).toString() } ?: pkg,
                info?.let { runCatching { pm.getApplicationIcon(it) }.getOrNull() }, info != null, pkg in selected)
        }.sortedWith(compareBy(String.CASE_INSENSITIVE_ORDER) { it.name })
        return State(data.getBoolean("installed"), data.getBoolean("enabled"), data.getString("versionName").orEmpty(), apps)
    }
    fun open(context: Context, pkg: String) {
        val intent = context.packageManager.getLaunchIntentForPackage(pkg) ?: error(context.getString(R.string.cannot_open))
        context.startActivity(intent)
    }
    fun info(context: Context, pkg: String) = context.startActivity(Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS, Uri.parse("package:$pkg")))
    fun releases(context: Context) = context.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(RELEASE_URL)))
}
