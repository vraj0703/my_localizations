
import 'my_localizations_platform_interface.dart';

class MyLocalizations {
  Future<String?> getPlatformVersion() {
    return MyLocalizationsPlatform.instance.getPlatformVersion();
  }
}
