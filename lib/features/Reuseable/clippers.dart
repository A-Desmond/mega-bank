import 'package:flutter/material.dart';

class LeftSkewCut extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    final path = Path();
    path.lineTo(width, 0);
    path.lineTo(width - 20, height);
    path.lineTo(0, height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(LeftSkewCut oldClipper) => false;
}

class RightSkewCut extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    final path = Path();
    path.moveTo(20, 0);
    path.lineTo(width, 0);
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(RightSkewCut oldClipper) => false;
}
