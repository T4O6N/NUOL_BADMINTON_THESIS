import 'package:flutter/material.dart';

class BookingButton extends StatelessWidget {
  const BookingButton({super.key, required this.onTap, required this.text});
  final VoidCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size.height * 0.06,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
