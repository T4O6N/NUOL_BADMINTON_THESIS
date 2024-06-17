// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class PaymentDetailController extends GetxController {
  final int totalPrice = Get.arguments;
  int discount = 20000;

  late final int totalAll;
  @override
  void onInit() {
    totalAll = totalPrice - discount;
    super.onInit();
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
