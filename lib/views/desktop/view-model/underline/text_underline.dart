import 'package:flutter/material.dart';

class TextUnderline {
  TextDecoration getType(int state, int mine) {
    return state == mine ? TextDecoration.underline : TextDecoration.none;
  }
}
