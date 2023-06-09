import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;
}

extension MobileProjectSize on BuildContext {
  double get urlCardWidth => width * 0.7;
  double get widthToBeUsed => width * 0.95;
}

extension StaticSize on BuildContext {
  double get mediumImageHeigt => 200;
}
