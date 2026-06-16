//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <dynamic_native_extensions/dynamic_native_extensions_plugin.h>
#include <irondash_engine_context/irondash_engine_context_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) dynamic_native_extensions_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "DynamicNativeExtensionsPlugin");
  dynamic_native_extensions_plugin_register_with_registrar(dynamic_native_extensions_registrar);
  g_autoptr(FlPluginRegistrar) irondash_engine_context_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "IrondashEngineContextPlugin");
  irondash_engine_context_plugin_register_with_registrar(irondash_engine_context_registrar);
}
