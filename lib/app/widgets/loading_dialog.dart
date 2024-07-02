import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:nuol_badminton_thesis/app/constants/lottie_constants.dart';

class Loading {
  static void show() => Get.dialog(
        PopScope(
          canPop: false,
          child: Center(
            child: Container(
              color: Colors.transparent,
              width: 200,
              height: 200,
              padding: const EdgeInsets.all(12.0),
              child: Lottie.asset(LottieConstants.loading, fit: BoxFit.cover),
            ),
          ),
        ),
        barrierDismissible: false,
      );

  static void hide() => Get.back();
}
