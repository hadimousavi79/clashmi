import 'dart:io';

import 'package:package_info_plus/package_info_plus.dart';

abstract final class AppUtils {
  static Future<String> getPackgetVersion() async {
    try {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      return "${packageInfo.version}.${packageInfo.buildNumber}";
    } catch (e) {
      return getBuildinVersion();
    }
  }

  static String getName() {
    return "Clash Mi";
  }

  static String getReleaseVersion() {
    List<String> v = getBuildinVersion().split(".");
    return "${v[0]}.${v[1]}.${v[2]}+${v[3]}";
  }

  static String getBuildinVersion() {
    return "1.0.7.111";
  }

  static String getId() {
    return "com.nebula.clashmi";
  }

  static String getGroupId() {
    return "group.com.nebula.clashmi";
  }

  static String getBundleId() {
    if (Platform.isIOS || Platform.isMacOS) {
      return "com.nebula.clashmi.clashmiService";
    }
    return "";
  }

  static String getICloudContainerId() {
    return "iCloud.com.nebula.clashmi";
  }
}
