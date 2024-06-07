import 'package:flutter/material.dart';

class BookingButton extends StatelessWidget {
  const BookingButton({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size.height * 0.055,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(8)),
        child: const Center(
            child: Text(
          "ຈອງ",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
