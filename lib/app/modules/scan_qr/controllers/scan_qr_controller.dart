// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanQrController extends GetxController {
  Rx<Barcode?> resultQr = Rx<Barcode?>(null);
  Rx<QRViewController?> qrController = Rx<QRViewController?>(null);

  Future<void> setQRViewCreated({required QRViewController qrViewController, required BuildContext context}) async {
    try {
      qrController.value = qrViewController;
      qrController.value!.scannedDataStream.listen((scanData) async {
        resultQr.value = scanData;
        if (resultQr.value != null) {
          final String qrCode = resultQr.value!.code ?? '';
          // _handleBarcodeData(qrCode, context);
        } else {
          print("object");
        }
      });
    } catch (e) {
      print(e);
    }
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
