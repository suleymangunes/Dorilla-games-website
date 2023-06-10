import 'package:flutter/material.dart';

extension ProjectPads on BuildContext {
  EdgeInsets get textButtonPadding => const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5);
  EdgeInsets get urlSvgLeftPad => const EdgeInsets.only(left: 10);
  EdgeInsets get smallTextPad => const EdgeInsets.symmetric(vertical: 4, horizontal: 8);
  EdgeInsets get topPadMobile => const EdgeInsets.only(top: 80);
  EdgeInsets get allSmallPad => const EdgeInsets.all(8.0);
  EdgeInsets get desktopContentPad => const EdgeInsets.symmetric(vertical: 10, horizontal: 14);
  EdgeInsets get desktopLogoPad => const EdgeInsets.all(15.0);
}
