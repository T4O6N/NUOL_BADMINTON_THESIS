// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class AdminBookingController extends GetxController {
  var selectedValue = 'A1'.obs;
  var selectedValueNew = '9:00 - 10:00 AM'.obs;
  var isSelected = List<bool>.filled(13, false).obs;
  int court = 0;

  void toggleSelection(int index) {
    isSelected[index] = !isSelected[index];
  }

  var options = ['A1', 'B2', 'C3', 'D4', 'E5', 'F6', 'G7', 'H8', 'I9', 'J10'].obs;
  var optionsNew = [
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
  ].obs;

  // final List<String> courtTime = ['9:00 - 10:00', '10:00 - 11:00', '11:00 - 12:00', '1:00 - 2:00', '2:00 - 3:00', '3:00 - 4:00', '4:00 - 5:00', '5:00 - 6:00', '6:00 - 7:00', '7:00 - 8:00', '8:00 - 9:00', '9:00 - 10:00', '10:00 - 11:00'];
  final List<String> courtTime = [
    'xxxxxxxx',
    'xxxxxxxx',
    'xxxxxxxx',
    'xxxxxxxx',
    'xxxxxxxx',
    'xxxxxxxx',
    'xxxxxxxx',
    'xxxxxxxx',
    'xxxxxxxx',
    'xxxxxxxx',
    'xxxxxxxx',
    'xxxxxxxx',
    // '10:00 - 11:00',
    // '11:00 - 12:00',
    // '1:00 - 2:00',
    // '2:00 - 3:00',
    // '3:00 - 4:00',
    // '4:00 - 5:00',
    // '5:00 - 6:00',
    // '6:00 - 7:00',
    // '7:00 - 8:00',
    // '8:00 - 9:00',
    // '9:00 - 10:00',
    // '10:00 - 11:00',
  ];
  void setSelected(String value) {
    selectedValue.value = value;
  }

  void setSelectedNew(String value) {
    selectedValueNew.value = value;
  }

  @override
  void onInit() {
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
