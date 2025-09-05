#include "include/my_localizations/my_localizations_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "my_localizations_plugin.h"

void MyLocalizationsPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  my_localizations::MyLocalizationsPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
