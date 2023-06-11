import 'package:dorilla_games/product/enum/font/font_enum.dart';
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
  double get nameArea => width * 0.15;
  double get areaSpace => width * 0.05;
  double get emailArea => width * 0.2;
}

extension StaticSize on BuildContext {
  double get mediumImageHeigt => 200;
  double get smallImageHeigt => 125;
  double get appCardHeight => 55;
  double get appCardWidth => 220;
  double get desktopBodyHeight => 500;
  double get desktopLogoHeight => 280;
  double get carouselSliderWidth => 250;
  double get carouselSliderHeight => 600;
  double get svgSize => 60;
  double get svgSmallHeight => 20;
  double get svgThirty => 20;
  double get svgSmallWidth => 25;
  int get maxlineTellme => 4;
}

extension Sizedboxes on BuildContext {
  SizedBox get smallSizedbox => const SizedBox(height: 15);
  SizedBox get smallArea => SizedBox(width: areaSpace);
}

extension ProjectColor on BuildContext {
  Color get pampas => const Color.fromRGBO(241, 237, 234, 1);
  Color get pippin => const Color.fromARGB(255, 230, 226, 223);

  Color get cocoaBean => const Color.fromRGBO(67, 37, 23, 1);
}

extension TextExtension on BuildContext {
  TextStyle? get hintStyleCustom => Theme.of(this).textTheme.titleMedium?.copyWith(
        color: cocoaBean,
        fontFamily: FontEnum.bodoni.rawValue,
      );
}
