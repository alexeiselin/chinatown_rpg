import 'package:flutter/material.dart';

class Utilities {
  static const double baseWidth = 480.0;

  static double screenAwareSize(double size, BuildContext context) {
    double drawingWidth = MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    return size * drawingWidth / baseWidth;
  }
}
