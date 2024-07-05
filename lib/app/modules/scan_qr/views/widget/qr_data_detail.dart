import 'package:flutter/material.dart';

class QrDataDetail extends StatelessWidget {
  final String qrData;
  const QrDataDetail({super.key, required this.qrData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ລາຍລະອຽດການຈອງຂອງລູກຄ້າ",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(child: Text(qrData)),
    );
  }
}
