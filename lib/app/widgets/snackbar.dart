import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showCustomSnackbar(String title, String message) {
  Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.TOP,
    backgroundColor: Colors.white,
    colorText: Colors.black,
    borderRadius: 20,
    margin: const EdgeInsets.all(15),
    icon: const Icon(
      Icons.check_circle,
      color: Colors.green,
    ),
    mainButton: TextButton(
      onPressed: () {
        Get.back(); // Close the snackbar
      },
      child: const Text(
        'OK',
        style: TextStyle(color: Colors.black),
      ),
    ),
    snackStyle: SnackStyle.FLOATING,
  );
}
