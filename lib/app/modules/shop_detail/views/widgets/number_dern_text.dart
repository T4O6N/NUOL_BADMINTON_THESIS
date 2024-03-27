import 'package:flutter/material.dart';

class NumberDernText extends StatelessWidget {
  const NumberDernText({
    super.key,
    required this.labelText,
  });
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: TextField(
        readOnly: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Colors.black, fontSize: 24),
          hintText: labelText,
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
        ),
      ),
    );
  }
}
