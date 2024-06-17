// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class ChooseScheduleController extends GetxController {
  final List<String> courtTime = [
    '9:00 - 10:00 AM',
    '10:00 - 11:00 AM',
    '11:00 - 12:00 AM',
    '1:00 - 2:00 PM',
    '2:00 - 3:00 PM',
    '3:00 - 4:00 PM',
    '4:00 - 5:00 PM',
    '5:00 - 6:00 PM',
    '6:00 - 7:00 PM',
    '7:00 - 8:00 PM',
    '8:00 - 9:00 PM',
    '9:00 - 10:00 PM',
    '10:00 - 11:00 PM',
  ];
  final List<int> courtPrices = [
    80000,
    80000,
    80000,
    80000,
    80000,
    80000,
    80000,
    80000,
    80000,
    80000,
    80000,
    80000,
    80000,
  ];
  final RxList<bool> selectedTimes = List<bool>.filled(13, false).obs;
  int court = 0;

  void toggleSelection(int index) {
    selectedTimes[index] = !selectedTimes[index];
  }

  List<String> getSelectedTimes() {
    List<String> selected = [];
    for (int i = 0; i < courtTime.length; i++) {
      if (selectedTimes[i]) {
        selected.add(courtTime[i]);
      }
    }
    return selected;
  }

  List<int> getSelectedPrices() {
    List<int> selected = [];
    for (int i = 0; i < courtPrices.length; i++) {
      if (selectedTimes[i]) {
        selected.add(courtPrices[i]);
      }
    }
    return selected;
  }

  // RxInt getTotalPrice() {
  //   RxInt total = 0.obs;
  //   for (int i = 0; i < courtPrices.length; i++) {
  //     if (selectedTimes[i]) {
  //       total += courtPrices[i];
  //     }
  //   }
  //   return total;
  // }
  int getTotalPrice() {
    int total = 0;
    for (int i = 0; i < courtPrices.length; i++) {
      if (selectedTimes[i]) {
        total += courtPrices[i];
      }
    }
    return total;
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
