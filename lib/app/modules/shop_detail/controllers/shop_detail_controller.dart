// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class ShopDetailController extends GetxController {
  bool isChecked = false;
  int index = 0;

  void setArgument() {
    final int indexCourt = Get.arguments as int;
    index = indexCourt;
  }

  final List<String> courtPicInfo = [
    'assets/images/c1.jpeg',
    'assets/images/c2.jpeg',
    'assets/images/c3.jpeg',
    'assets/images/c4.jpeg',
    'assets/images/c5.jpeg',
  ];

  @override
  void onInit() {
    super.onInit();
    isChecked;
    // setArgument();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
