// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OwnerDashboardController extends GetxController {
  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
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

  late PageController pageController;
  //Function for go the page
  RxInt currentPage = 0.obs;
  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }
}
