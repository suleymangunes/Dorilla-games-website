import 'package:flutter/material.dart';

extension ProjectPads on BuildContext {
  EdgeInsets get textButtonPadding => const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5);
  EdgeInsets get urlSvgLeftPad => const EdgeInsets.only(left: 10);
  EdgeInsets get smallTextPad => const EdgeInsets.symmetric(vertical: 4, horizontal: 8);
  EdgeInsets get mediumTextPad => const EdgeInsets.symmetric(vertical: 8, horizontal: 12);
  EdgeInsets get topPadMobile => const EdgeInsets.only(top: 80);
  EdgeInsets get allSmallPad => const EdgeInsets.all(8.0);
  EdgeInsets get desktopContentPad => const EdgeInsets.symmetric(vertical: 10, horizontal: 14);
  EdgeInsets get desktopLogoPad => const EdgeInsets.all(15.0);
  EdgeInsets get desktopSliderPad => const EdgeInsets.all(15.0);
  EdgeInsets get smallAllPad => const EdgeInsets.symmetric(horizontal: 3);
  EdgeInsets get svgPad => const EdgeInsets.all(10);
  EdgeInsets get smallTopPad => const EdgeInsets.only(top: 3);
  EdgeInsets get topPadDesktope => const EdgeInsets.only(top: 100);
}
