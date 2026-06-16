#include "include/dynamic_native_extensions/dynamic_native_extensions_plugin.h"

#include <flutter_linux/flutter_linux.h>
#include <gtk/gtk.h>
#include <sys/utsname.h>

#include <cstring>
#include <dlfcn.h>

#define SUPER_NATIVE_EXTENSIONS_PLUGIN(obj)                                    \
  (G_TYPE_CHECK_INSTANCE_CAST((obj),                                           \
                              dynamic_native_extensions_plugin_get_type(),       \
                              DynamicNativeExtensionsPlugin))

struct _DynamicNativeExtensionsPlugin {
  GObject parent_instance;
};

G_DEFINE_TYPE(DynamicNativeExtensionsPlugin, dynamic_native_extensions_plugin,
              g_object_get_type())

static void dynamic_native_extensions_plugin_dispose(GObject *object) {
  G_OBJECT_CLASS(dynamic_native_extensions_plugin_parent_class)->dispose(object);
}

static void dynamic_native_extensions_plugin_class_init(
    DynamicNativeExtensionsPluginClass *klass) {
  G_OBJECT_CLASS(klass)->dispose = dynamic_native_extensions_plugin_dispose;
}

extern "C" {
extern void dynamic_native_extensions_init(void);
}

static void
dynamic_native_extensions_plugin_init(DynamicNativeExtensionsPlugin *self) {
  static bool initialized = false;
  if (!initialized) {
    dynamic_native_extensions_init();
    initialized = true;
  }
}

void dynamic_native_extensions_plugin_register_with_registrar(
    FlPluginRegistrar *registrar) {
  DynamicNativeExtensionsPlugin *plugin = SUPER_NATIVE_EXTENSIONS_PLUGIN(
      g_object_new(dynamic_native_extensions_plugin_get_type(), nullptr));

  g_object_unref(plugin);
}
