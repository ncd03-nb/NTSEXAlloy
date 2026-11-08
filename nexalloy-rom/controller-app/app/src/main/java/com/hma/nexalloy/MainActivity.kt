package com.hma.nexalloy

import android.os.Bundle
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.activity.SystemBarStyle
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.Image
import androidx.compose.foundation.clickable
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.rounded.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.dp
import androidx.core.graphics.drawable.toBitmap
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            val dark = isSystemInDarkTheme()
            val context = LocalContext.current
            enableEdgeToEdge(statusBarStyle = SystemBarStyle.auto(Color.Transparent.toArgb(), Color.Transparent.toArgb()) { dark },
                navigationBarStyle = SystemBarStyle.auto(Color.Transparent.toArgb(), Color.Transparent.toArgb()) { dark })
            MaterialTheme(colorScheme = if (dark) dynamicDarkColorScheme(context) else dynamicLightColorScheme(context)) { ManagerScreen() }
        }
    }
}
private sealed interface LoadState {
    data object Loading : LoadState
    data class Ready(val data: NexAlloyStore.State) : LoadState
    data class Failed(val message: String) : LoadState
}
@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun ManagerScreen() {
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    var state by remember { mutableStateOf<LoadState>(LoadState.Loading) }
    var busy by remember { mutableStateOf(false) }
    var query by rememberSaveable { mutableStateOf("") }
    var installedOnly by rememberSaveable { mutableStateOf(false) }
    var selectedApp by remember { mutableStateOf<NexAlloyStore.App?>(null) }
    var installPrompt by remember { mutableStateOf(false) }
    var prompted by rememberSaveable { mutableStateOf(false) }
    fun notifyError(error: Throwable) { Toast.makeText(context, error.cause?.message ?: error.message ?: context.getString(R.string.failed), Toast.LENGTH_LONG).show() }
    fun refresh() {
        if (busy) return
        scope.launch {
            busy = true
            state = try {
                val data = withContext(Dispatchers.IO) { NexAlloyStore.load(context) }
                if (!data.installed && !prompted) { installPrompt = true; prompted = true }
                LoadState.Ready(data)
            } catch (error: Exception) { LoadState.Failed(error.message ?: context.getString(R.string.failed)) }
            finally { busy = false }
        }
    }
    fun change(method: String, pkg: String? = null, value: Boolean? = null) {
        if (busy) return
        scope.launch {
            busy = true
            try {
                val data = withContext(Dispatchers.IO) { NexAlloyStore.change(context, method, pkg, value) }
                state = LoadState.Ready(data)
                if (method == "stop" || method == "optimize") Toast.makeText(context, R.string.done, Toast.LENGTH_SHORT).show()
            } catch (error: Exception) { notifyError(error) }
            finally { busy = false }
        }
    }
    val owner = LocalLifecycleOwner.current
    DisposableEffect(owner) {
        val observer = LifecycleEventObserver { _, event -> if (event == Lifecycle.Event.ON_RESUME) refresh() }
        owner.lifecycle.addObserver(observer)
        onDispose { owner.lifecycle.removeObserver(observer) }
    }
    LaunchedEffect(Unit) { refresh() }
    val data = (state as? LoadState.Ready)?.data
    Scaffold(topBar = { TopAppBar(title = { Column {
        Text(stringResource(R.string.app_name))
        Text(data?.version?.ifEmpty { null } ?: NexAlloyStore.MODULE, style = MaterialTheme.typography.bodySmall)
    } }, actions = {
        if (data?.installed == true) Switch(checked = data.enabled, enabled = !busy,
            modifier = Modifier.semantics { contentDescription = context.getString(R.string.master) }, onCheckedChange = { change("enabled", value = it) })
        IconButton(onClick = { refresh() }, enabled = !busy) { Icon(Icons.Rounded.Refresh, stringResource(R.string.refresh)) }
    }) }, floatingActionButton = {
        ExtendedFloatingActionButton(onClick = {
            if (data?.installed == true) runCatching { NexAlloyStore.open(context, NexAlloyStore.MODULE) }.onFailure { notifyError(it) }
            else installPrompt = true
        }, icon = { Icon(Icons.Rounded.OpenInNew, null) }, text = { Text(stringResource(R.string.open_module)) })
    }) { padding ->
        Column(Modifier.fillMaxSize().padding(padding)) {
            if (busy) LinearProgressIndicator(Modifier.fillMaxWidth())
            when (val current = state) {
                LoadState.Loading -> Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) { CircularProgressIndicator() }
                is LoadState.Failed -> Column(Modifier.padding(24.dp), verticalArrangement = Arrangement.spacedBy(16.dp)) {
                    Text(current.message)
                    Button(onClick = { refresh() }) { Text(stringResource(R.string.refresh)) }
                }
                is LoadState.Ready -> if (!current.data.installed) {
                    Column(Modifier.padding(24.dp), verticalArrangement = Arrangement.spacedBy(16.dp)) {
                        Text(stringResource(R.string.install_message))
                        Button(onClick = { installPrompt = true }) { Text(stringResource(R.string.install_module)) }
                    }
                } else {
                    OutlinedTextField(value = query, onValueChange = { query = it }, singleLine = true,
                        label = { Text(stringResource(R.string.search_apps)) }, leadingIcon = { Icon(Icons.Rounded.Search, null) },
                        modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp))
                    FilterChip(selected = installedOnly, onClick = { installedOnly = !installedOnly },
                        label = { Text(stringResource(R.string.installed_only)) }, modifier = Modifier.padding(horizontal = 16.dp))
                    val visible = current.data.apps.filter { (!installedOnly || it.installed) &&
                        (it.name.contains(query, true) || it.packageName.contains(query, true)) }
                    LazyColumn(contentPadding = PaddingValues(bottom = 100.dp)) {
                        if (visible.isEmpty()) item { Text(stringResource(R.string.no_apps), Modifier.padding(24.dp)) }
                        items(visible, key = { it.packageName }) { app ->
                            ListItem(modifier = Modifier.clickable { selectedApp = app }, leadingContent = { AppIcon(app) },
                                headlineContent = { Text(app.name) }, supportingContent = { Column {
                                    Text(app.packageName)
                                    if (!app.installed) Text(stringResource(R.string.not_installed))
                                } }, trailingContent = { Checkbox(checked = app.selected, enabled = !busy,
                                    modifier = Modifier.semantics { contentDescription = app.name },
                                    onCheckedChange = { change("selected", app.packageName, it) }) })
                        }
                    }
                }
            }
        }
    }
    selectedApp?.let { app ->
        ModalBottomSheet(onDismissRequest = { selectedApp = null }) {
            ListItem(leadingContent = { AppIcon(app) }, headlineContent = { Text(app.name, style = MaterialTheme.typography.titleLarge) }, supportingContent = { Text(app.packageName) })
            HorizontalDivider(Modifier.padding(horizontal = 24.dp))
            AppAction(Icons.Rounded.OpenInNew, R.string.open_app, app.installed) { selectedApp = null; runCatching { NexAlloyStore.open(context, app.packageName) }.onFailure { notifyError(it) } }
            AppAction(Icons.Rounded.Info, R.string.app_info, app.installed) { selectedApp = null; runCatching { NexAlloyStore.info(context, app.packageName) }.onFailure { notifyError(it) } }
            AppAction(Icons.Rounded.Stop, R.string.force_stop, app.installed && !busy) { selectedApp = null; change("stop", app.packageName) }
            AppAction(Icons.Rounded.Bolt, R.string.optimize, app.installed && !busy, R.string.optimize_hint) { selectedApp = null; change("optimize", app.packageName) }
            Spacer(Modifier.height(24.dp))
        }
    }
    if (installPrompt) AlertDialog(onDismissRequest = { installPrompt = false }, title = { Text(stringResource(R.string.install_module)) },
        text = { Text(stringResource(R.string.install_message)) }, confirmButton = { TextButton(onClick = {
            installPrompt = false; runCatching { NexAlloyStore.releases(context) }.onFailure { notifyError(it) }
        }) { Text(stringResource(R.string.open_releases)) } }, dismissButton = { TextButton(onClick = { installPrompt = false }) { Text(stringResource(R.string.later)) } })
}
@Composable
private fun AppIcon(app: NexAlloyStore.App) {
    val bitmap = remember(app.icon) { app.icon?.toBitmap(128, 128)?.asImageBitmap() }
    if (bitmap == null) Icon(Icons.Rounded.Apps, null, modifier = Modifier.size(48.dp))
    else Image(bitmap, null, modifier = Modifier.size(48.dp))
}
@Composable
private fun AppAction(icon: ImageVector, text: Int, enabled: Boolean, detail: Int? = null, action: () -> Unit) {
    ListItem(modifier = Modifier.clickable(enabled = enabled, onClick = action),
        colors = ListItemDefaults.colors(headlineColor = if (enabled) MaterialTheme.colorScheme.onSurface else MaterialTheme.colorScheme.onSurface.copy(alpha = .38f)),
        leadingContent = { Icon(icon, null, modifier = Modifier.size(28.dp)) }, headlineContent = { Text(stringResource(text)) },
        supportingContent = detail?.let { { Text(stringResource(it)) } })
}
