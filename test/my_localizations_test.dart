import 'package:flutter_test/flutter_test.dart';
import 'package:my_localizations/my_localizations.dart';
import 'package:my_localizations/my_localizations_platform_interface.dart';
import 'package:my_localizations/my_localizations_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMyLocalizationsPlatform
    with MockPlatformInterfaceMixin
    implements MyLocalizationsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MyLocalizationsPlatform initialPlatform = MyLocalizationsPlatform.instance;

  test('$MethodChannelMyLocalizations is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMyLocalizations>());
  });

  test('getPlatformVersion', () async {
    MyLocalizations myLocalizationsPlugin = MyLocalizations();
    MockMyLocalizationsPlatform fakePlatform = MockMyLocalizationsPlatform();
    MyLocalizationsPlatform.instance = fakePlatform;

    expect(await myLocalizationsPlugin.getPlatformVersion(), '42');
  });
}
