import 'package:flutter/material.dart';

extension ProjectPads on BuildContext {
  EdgeInsets get textButtonPadding => const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5);
  EdgeInsets get urlSvgLeftPad => const EdgeInsets.only(left: 10);
  EdgeInsets get smallTextPad => const EdgeInsets.symmetric(vertical: 4, horizontal: 8);
}
