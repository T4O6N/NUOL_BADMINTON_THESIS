// ignore_for_file: unnecessary_overrides, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/data/booking_court_local_data_source.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/model/booking_request.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/model/booking_response.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/model/court_duration.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/service/booking_sevice.dart';
import 'package:nuol_badminton_thesis/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/home/model/court.dart';
import 'package:nuol_badminton_thesis/app/modules/payment_detail/views/widget/bill_payment_detail.dart';
import 'package:nuol_badminton_thesis/app/widgets/loading_dialog.dart';
import 'package:nuol_badminton_thesis/app/widgets/warning_dialog.dart';

class ChooseScheduleController extends GetxController {
  final usernameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  DashboardController dashboardController = Get.put(DashboardController());

  final List<String> courtTime = ['9:00 - 10:00 AM', '10:00 - 11:00 AM', '11:00 - 12:00 AM', '1:00 - 2:00 PM', '2:00 - 3:00 PM', '3:00 - 4:00 PM', '4:00 - 5:00 PM', '5:00 - 6:00 PM', '6:00 - 7:00 PM', '7:00 - 8:00 PM', '8:00 - 9:00 PM', '9:00 - 10:00 PM', '10:00 - 11:00 PM'];
  final List<int> courtPrices = [80000, 80000, 80000, 80000, 80000, 80000, 80000, 80000, 80000, 80000, 80000, 80000, 80000];
  final RxList<bool> selectedTimes = List<bool>.filled(13, false).obs;
  int court = 0;
  RxInt finalTotalPrice = 0.obs;
  RxInt totalPrice = 0.obs;
  RxString formattedDate = "".obs;
  List<CourtDuration> bookingDetails = [];
  Rx<Court> courtModel = const Court().obs;
  final BookingService bookingService = BookingService();
  var bookingResponse = Rx<BookingResponse?>(null);
  var isLoading = false.obs;
  var logger = Logger();

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

  Future<void> bookingWaterParkOrder({required BuildContext context}) async {
    Loading.show();
    final deviceId = dashboardController.deviceInfoModel.value.id;
    final selectedCourtModels = bookingDetails.where((courtModel) => courtModel.duration_time.isNotEmpty).toList();

    if (selectedCourtModels.isEmpty) {
      Get.snackbar(
        'Error',
        'Please select at least one time slot',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }
    final bookingRequest = BookingRequest(
      phone: phoneNumberController.text,
      court: selectedCourtModels,
      device_id: deviceId,
      full_name: usernameController.text,
      court_number: courtModel.value.name,
      payment_status: "booked",
      total_amount: finalTotalPrice.value,
      booked_by: usernameController.text,
    );

    logger.d(bookingRequest);

    final data = await BookingCourtLocalDataSource().createCourtBooking(bookingRequest);
    data.fold(
      (l) {
        Loading.hide();
        warningDialog(context: context, des: l, btnOkOnPress: () {});
      },
      (r) {
        Loading.hide();
        Get.snackbar(
          'ສຳເລັດ',
          'ການຈອງເດີ່ນສຳເລັດ',
          backgroundColor: Colors.white,
          colorText: Colors.black,
        );
        Get.to(
          BillPaymentDetail(
            court: courtModel.value,
            bookingDetails: bookingDetails,
            userName: usernameController.text,
            phoneNumber: phoneNumberController.text,
            finalTotalPrice: finalTotalPrice.value,
            totalPrice: totalPrice.value,
            bookingResponse: r,
          ),
        );
      },
    );
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
    usernameController.dispose();
    phoneNumberController.dispose();
    super.onClose();
  }
}
