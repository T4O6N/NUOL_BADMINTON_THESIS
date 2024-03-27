import 'package:flutter/material.dart';

class ShowDurationBooking extends StatelessWidget {
  const ShowDurationBooking({
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
        color: Color(0xFF00A950),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Text(
              "ເດືອນ7,2023",
              style: TextStyle(
                  fontSize: 16, fontFamily: 'NotoSansLao', color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
