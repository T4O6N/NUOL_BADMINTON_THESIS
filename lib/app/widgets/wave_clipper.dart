import 'package:flutter/material.dart';

class MovieTicketBothSidesClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height);
    double x = 0;
    final double y = size.height;
    final double yControlPoint = size.height * 0.965;
    final double increment = size.width / 18;

    while (x < size.width) {
      path.quadraticBezierTo(x + increment / 2, yControlPoint, x + increment, y);
      x += increment;
    }
    path.lineTo(size.width, 0.0);
    while (x > 0) {
      path.quadraticBezierTo(x - increment / 2, size.height * .035, x - increment, 5);
      x -= increment;
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return oldClipper != this;
  }
}
