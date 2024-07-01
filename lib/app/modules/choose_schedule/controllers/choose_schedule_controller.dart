// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/param/create_booking_court_duration_time_param.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/param/create_booking_court_param.dart';
import 'package:nuol_badminton_thesis/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:nuol_badminton_thesis/app/widgets/loading_dialog.dart';

class ChooseScheduleController extends GetxController {
  final usernameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  DashboardController dashboardController = Get.put(DashboardController());

  final List<String> courtTime = ['9:00 - 10:00 AM', '10:00 - 11:00 AM', '11:00 - 12:00 AM', '1:00 - 2:00 PM', '2:00 - 3:00 PM', '3:00 - 4:00 PM', '4:00 - 5:00 PM', '5:00 - 6:00 PM', '6:00 - 7:00 PM', '7:00 - 8:00 PM', '8:00 - 9:00 PM', '9:00 - 10:00 PM', '10:00 - 11:00 PM'];
  final List<int> courtPrices = [80000, 80000, 80000, 80000, 80000, 80000, 80000, 80000, 80000, 80000, 80000, 80000, 80000];
  final RxList<bool> selectedTimes = List<bool>.filled(13, false).obs;
  int court = 0;
  RxInt totalPrice = 0.obs;
  RxString formattedDate = "".obs;

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

  int getTotalPrice() {
    int total = 0;
    for (int i = 0; i < courtPrices.length; i++) {
      if (selectedTimes[i]) {
        total += courtPrices[i];
      }
    }
    return total;
  }

  String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your username';
    }
    return null;
  }

  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    }
    if (!RegExp(r'^\d+$').hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  //function connect api
  Future<void> bookingWaterParkOrder({required BuildContext context}) async {
    Loading.show();
    final deviceId = dashboardController.deviceInfoModel.value.id;
    final param = CreateBookingCourtParam(
      deviceId: deviceId,
      phone: phoneNumberController.toString(),
      fullName: usernameController.toString(),
      paymentStatus: "booked",
      totalAmount: totalPrice.value,
      bookedBy: usernameController.toString(),
      court: [
        CreateBookingCourtDurationTimeParam(
          courtNumber: "A1",
          courtPrice: 80000,
          date: formattedDate.value,
        ),
      ],
    );
  }

  @override
  void onInit() {
    // setArgument();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    usernameController.dispose();
    phoneNumberController.dispose();
    super.onClose();
  }
}
