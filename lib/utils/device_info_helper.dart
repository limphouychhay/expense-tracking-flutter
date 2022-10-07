import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

class DeviceInfoHelper {
  static String? uuid = 'unknown';
  static late String? osVersion;
  static late String platform;
  static late String appVersion;

  static dynamic initialize() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    appVersion = packageInfo.version;

    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      uuid = androidInfo.id;
      osVersion = androidInfo.version.release;
      platform = 'android';
    } else {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      uuid = iosInfo.identifierForVendor ??
          '${iosInfo.systemName}${iosInfo.model}${iosInfo.name}';
      osVersion = iosInfo.systemVersion;
      platform = 'ios';
    }
  }
}
