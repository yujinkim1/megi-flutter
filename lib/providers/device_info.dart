import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';

//MARK: -GET DEVICE INFORMATION FUTURE
Future<Map<String, dynamic>> getDeviceInfo() async {
  DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  Map<String, dynamic> device = <String, dynamic>{};

  try {
    if (Platform.isAndroid) {
      device = _readAndroidDeviceInfo(await deviceInfoPlugin.androidInfo);
    } else if (Platform.isIOS) {
      device = _readIosDeviceInfo(await deviceInfoPlugin.iosInfo);
    }
  } catch (error) {
    device = {"OS 버전": "OS 버전을 불러오는데 실패했어요.", "디바이스": "디바이스 정보를 불러오는데 실패했어요."};
  }

  return device;
}

//MARK: -READ ONLY ANDROID DEVICES
Map<String, dynamic> _readAndroidDeviceInfo(AndroidDeviceInfo deviceInfo) {
  var model = deviceInfo.model;
  var sdkInt = deviceInfo.version.sdkInt;
  var release = deviceInfo.version.release;
  var manufacturer = deviceInfo.manufacturer;

  return {
    "OS 버전": "안드로이드 $release (SDK $sdkInt)",
    "디바이스": "$manufacturer $model"
  };
}

//MARK: -READ ONLY iOS DEVICES
Map<String, dynamic> _readIosDeviceInfo(IosDeviceInfo deviceInfo) {
  var systemName = deviceInfo.systemName;
  var version = deviceInfo.systemVersion;
  var machine = deviceInfo.utsname.machine;

  if (machine == "iPhone11,8") {
    machine = "iPhoneXR";
  } else if (machine == "iPhone10,6") {
    machine = "iPhoneX";
  } else if (machine == "iPhone12,1") {
    machine = "iPhone11";
  } else if (machine == "iPhone12,3") {
    machine = "iPhone11 Pro";
  } else if (machine == "iPhone12,5") {
    machine = "iPhone11 Pro Max";
  } else if (machine == "iPhone14,7") {
    machine = "iPhone14";
  }

  return {"OS 버전": "$systemName $version", "디바이스": "$machine"};
}
