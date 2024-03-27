import 'package:flutter/material.dart';

class ContainerDateTime extends StatelessWidget {
  const ContainerDateTime({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      height: size.height * 0.21,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF00A950),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: size.width * 0.65),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'ກໍລະກົດ',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'NotoSansLao',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '31',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 45,
                fontFamily: 'Roboto',
              ),
            ),
            Text(
              '2023',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
