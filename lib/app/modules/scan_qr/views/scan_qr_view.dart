// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../controllers/scan_qr_controller.dart';

class ScanQrView extends GetView<ScanQrController> {
  ScanQrView({Key? key}) : super(key: key);
  ScanQrController qrController = Get.put(ScanQrController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ສະເເກນ QR',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 8, child: _buildQrView(context)),
          const SizedBox(height: 24),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [Text("ສະເເກນ Qr ເພື່ອຢືນຍັນຕົວຕົນ")],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    final scanArea = (MediaQuery.of(context).size.width < 400 || MediaQuery.of(context).size.height < 400) ? 200.0 : 300.0;
    return QRView(
      key: GlobalKey(debugLabel: 'QR'),
      onQRViewCreated: (data) {
        qrController.setQRViewCreated(qrViewController: data, context: context);
      },
      overlay: QrScannerOverlayShape(
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: scanArea,
      ),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    // ignore: avoid_print
    print('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }
}
