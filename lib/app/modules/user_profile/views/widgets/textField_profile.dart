import 'package:flutter/material.dart';

class TextFieldProfile extends StatelessWidget {
  const TextFieldProfile({
    super.key,
    required this.label,
    required this.icon,
  });
  final String label;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    // double widthDefault = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .04,
        width: MediaQuery.of(context).size.width * .87,
        child: TextField(
          textAlign: TextAlign.left,
          readOnly: true,
          decoration: InputDecoration(
            hintText: label,
            hintStyle: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto',
            ),
            prefixIcon: icon,
            prefixIconColor: const Color(0xFF00A950),
          ),
        ),
      ),
    );
  }
}
