import 'package:flutter/material.dart';

class TotalPointContainer extends StatelessWidget {
  const TotalPointContainer({super.key, required this.labelPoint});
  final int labelPoint;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.blueGrey,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(children: [
          const Text(
            "ມີຄະແນນສະສົມ:",
            style: TextStyle(
                fontFamily: 'NotoSansLao',
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            "$labelPoint",
            style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFFD00A950)),
          ),
        ]),
      ),
    );
  }
}
