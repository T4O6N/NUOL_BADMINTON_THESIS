// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.labelText,
    required this.iconSuffix,
    // required this.boolobscureText,
  });
  final String labelText;
  final Icon iconSuffix;
  // final bool boolobscureText;
  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    //  final height = MediaQuery.of(context).size.height;
    return Expanded(
      // width: 0.775 * width,
      child: TextField(
        // obscureText: boolobscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFDDDDDD),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFDDDDDD)),
            borderRadius: BorderRadius.circular(80),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(80),
            borderSide: const BorderSide(color: Color(0xFFDDDDDD)),
          ),
          hintText: labelText,
          suffixIcon: IconButton(
            icon: iconSuffix,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
