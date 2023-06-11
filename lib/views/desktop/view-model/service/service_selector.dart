import 'package:flutter/material.dart';

class ServiceSelector {
  static Color selectColor(bool state, Color color) {
    if (state) {
      return color;
    } else {
      return Colors.transparent;
    }
  }
}
