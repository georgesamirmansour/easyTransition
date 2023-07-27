//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <easy_transition/easy_transition_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) easy_transition_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "EasyTransitionPlugin");
  easy_transition_plugin_register_with_registrar(easy_transition_registrar);
}
