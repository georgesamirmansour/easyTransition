//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <transition_easy/easy_transition_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) transition_easy_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "EasyTransitionPlugin");
  easy_transition_plugin_register_with_registrar(transition_easy_registrar);
}
