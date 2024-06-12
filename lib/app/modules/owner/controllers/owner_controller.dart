// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/sale_data.dart';

class OwnerController extends GetxController {
  @override
  void onInit() {
    fetchSalesData();
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

  var salesData = <SalesData>[].obs;
  void fetchSalesData() {
    var data = [SalesData('Jan', 35), SalesData('Feb', 28), SalesData('Mar', 34), SalesData('Apr', 32), SalesData('May', 40)];
    salesData.value = data;
  }
}
