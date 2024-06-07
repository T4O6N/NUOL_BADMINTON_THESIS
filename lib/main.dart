import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/login_with_phone/views/login_with_phone_view.dart';
import 'package:nuol_badminton_thesis/app/modules/payment_detail/views/payment_detail_view.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'NotoSansLao'),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      home: const PaymentDetailView(),
    ),
  );
}
