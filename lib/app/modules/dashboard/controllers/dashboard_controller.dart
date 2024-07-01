// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:nuol_badminton_thesis/app/modules/dashboard/model/device_info_model.dart';

class DashboardController extends GetxController {
  late PageController pageController;
  //Function for go the page
  RxInt currentPage = 0.obs;
  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }

  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  var deviceData = {}.obs;
  var isIosDevice = false.obs;

  Rx<DeviceInfoModel> deviceInfoModel = const DeviceInfoModel().obs;

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    initPlatformState();
    super.onInit();
  }

  Future<void> initPlatformState() async {
    var deviceInfo = {};

    try {
      if (GetPlatform.isAndroid) {
        deviceInfo = _readAndroidBuildData(await deviceInfoPlugin.androidInfo);
        deviceInfoModel.value = DeviceInfoModel(id: deviceInfo['id']);
      } else if (GetPlatform.isIOS) {
        deviceInfo = _readIosDeviceInfo(await deviceInfoPlugin.iosInfo);
        isIosDevice.value = true;
        deviceInfoModel.value = DeviceInfoModel(id: deviceInfo['identifierForVendor']);
      }
    } catch (e) {
      deviceInfo = {'Error:': 'Failed to get platform version.'};
    }

    deviceData.value = deviceInfo;
  }

  Map<String, dynamic> _readAndroidBuildData(AndroidDeviceInfo build) {
    return <String, dynamic>{
      'id': build.id,
      'version.securityPatch': build.version.securityPatch,
      'version.sdkInt': build.version.sdkInt,
      'version.release': build.version.release,
      'version.previewSdkInt': build.version.previewSdkInt,
      'version.incremental': build.version.incremental,
      'version.codename': build.version.codename,
      'version.baseOS': build.version.baseOS,
      'board': build.board,
      'bootloader': build.bootloader,
      'brand': build.brand,
      'device': build.device,
      'display': build.display,
      'fingerprint': build.fingerprint,
      'hardware': build.hardware,
      'host': build.host,
      'manufacturer': build.manufacturer,
      'model': build.model,
      'product': build.product,
      'supported32BitAbis': build.supported32BitAbis,
      'supported64BitAbis': build.supported64BitAbis,
      'supportedAbis': build.supportedAbis,
      'tags': build.tags,
      'type': build.type,
      'isPhysicalDevice': build.isPhysicalDevice,
      'systemFeatures': build.systemFeatures,
    };
  }

  Map<String, dynamic> _readIosDeviceInfo(IosDeviceInfo data) {
    return <String, dynamic>{
      'identifierForVendor': data.identifierForVendor,
    };
  }
}
