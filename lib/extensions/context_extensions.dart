import 'package:flutter/material.dart';

extension ContextUtils on BuildContext {
  // screen width and height
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;
}
