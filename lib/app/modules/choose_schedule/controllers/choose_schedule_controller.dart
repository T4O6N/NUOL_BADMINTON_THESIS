// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class ChooseScheduleController extends GetxController {
  final List<String> courtTime = ['9:00 - 10:00', '10:00 - 11:00', '11:00 - 12:00', '1:00 - 2:00', '2:00 - 3:00', '3:00 - 4:00', '4:00 - 5:00', '5:00 - 6:00', '6:00 - 7:00', '7:00 - 8:00', '8:00 - 9:00', '9:00 - 10:00', '10:00 - 11:00'];
  var isSelected = List<bool>.filled(13, false).obs;
  int court = 0;

  void toggleSelection(int index) {
    isSelected[index] = !isSelected[index];
  }

  void setArgument() {
    final int courtIndex = Get.arguments as int;
    court = courtIndex;
  }

  @override
  void onInit() {
    setArgument();
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
