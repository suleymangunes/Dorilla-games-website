import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get heigth => MediaQuery.of(this).size.height;
}

extension MobileProjectSize on BuildContext {
  double get urlCardWidth => width * 0.7;
  double get widthToBeUsed => width * 0.95;
  double get halfWidth => width * 0.5;
  double get heigthEighty => heigth * 0.8;
  double get widthFourty => width * 0.4;
}

extension StaticSize on BuildContext {
  double get mediumImageHeigt => 200;
  double get smallImageHeigt => 125;
  double get appCardHeight => 55;
  double get appCardWidth => 220;
  double get desktopBodyHeight => 500;
  double get desktopLogoHeight => 280;
}
