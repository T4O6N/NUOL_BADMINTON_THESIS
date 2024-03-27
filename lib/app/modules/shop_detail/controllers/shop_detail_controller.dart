import 'package:get/get.dart';

class ShopDetailController extends GetxController {
  bool isChecked = false;
  void onCheckboxChanged(bool? newValue) {
    isChecked = isChecked!;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    isChecked;
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
