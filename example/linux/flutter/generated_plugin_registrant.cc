//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <transition_easy/transition_easy_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) transition_easy_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "TransitionEasyPlugin");
  transition_easy_plugin_register_with_registrar(transition_easy_registrar);
}
