import 'package:dorilla_games/product/enum/font/font_enum.dart';
import 'package:flutter/material.dart';

class LargeTitleTexTBodoni extends StatelessWidget {
  const LargeTitleTexTBodoni({super.key, required this.text, this.letterSpacing, this.color});
  final String text;
  final double? letterSpacing;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: color,
            fontFamily: FontEnum.bodoni.rawValue,
            letterSpacing: letterSpacing,
          ),
    );
  }
}
