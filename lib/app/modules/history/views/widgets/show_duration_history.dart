import 'package:flutter/material.dart';

class ShowDurationHistory extends StatelessWidget {
  const ShowDurationHistory({
    super.key,
    required this.size,
    required this.dateTime,
  });

  final Size size;
  final String dateTime;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height * 0.055,
      decoration: const BoxDecoration(
        color: Color(0xFFD9D9D9),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            const Text(
              "ເດືອນ",
              style: TextStyle(fontSize: 16, fontFamily: 'NotoSansLao'),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              dateTime,
              style: const TextStyle(fontSize: 16, fontFamily: 'NotoSansLao'),
            ),
          ],
        ),
      ),
    );
  }
}
