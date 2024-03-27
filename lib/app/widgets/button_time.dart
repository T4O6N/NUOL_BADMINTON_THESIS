import 'package:flutter/material.dart';

//Button for select time or do something
class ButtonTime extends StatelessWidget {
  ButtonTime({
    super.key,
    required this.durationLabel,
    required this.color,
    this.height,
    this.size,
  });
  final String durationLabel;
  final Color color;
  double? height;
  double? size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, top: 3),
      // padding: const EdgeInsets.all(12),
      child: Container(
        height: .042 * MediaQuery.of(context).size.height,
        width: .25 * MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            durationLabel,
            style: const TextStyle(
              fontFamily: 'NotoSansLao',
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
