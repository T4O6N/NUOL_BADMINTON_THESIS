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
        title: Text('scan'.tr),
      ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 4, child: _buildQrView(context)),
          const SizedBox(height: 24),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 66,
                            height: 66,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFFF5D15),
                              shape: OvalBorder(),
                            ),
                            child: const Icon(
                              Icons.barcode_reader,
                              color: Colors.white,
                            ),
                          ),
                          Text('barcode'.tr),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 66,
                            height: 66,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFFF5D15),
                              shape: OvalBorder(),
                            ),
                            child: const Icon(
                              Icons.qr_code_scanner,
                              color: Colors.white,
                            ),
                          ),
                          Text('qrCode'.tr),
                        ],
                      ),
                    ],
                  ),
                ],
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
