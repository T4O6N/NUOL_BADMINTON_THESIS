// ignore_for_file: unused_element, camel_case_types

import 'package:flutter/material.dart';

class PolicyText extends StatelessWidget {
  const PolicyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            "ນະໂຍບາຍຄວາມເປັນສ່ວນຕົວ",
            style: TextStyle(color: Colors.black, fontFamily: 'NotoSansLao'),
          ),
        ),
        const Text(
          ".",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "ຂໍ້ກໍານົດໃຫ້ການບໍລິການ",
            style: TextStyle(color: Colors.black, fontFamily: 'NotoSansLao'),
          ),
        ),
      ],
    );
  }
}
