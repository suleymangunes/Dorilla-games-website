import 'package:dorilla_games/core/extension/color/color_extension.dart';
import 'package:dorilla_games/product/enum/font/font_enum.dart';
import 'package:flutter/material.dart';

class SmallHeadlineTextBodoni extends StatelessWidget {
  const SmallHeadlineTextBodoni({super.key, required this.text, this.textAlign, this.textOverflow, this.letterSpacing});
  final String text;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final double? letterSpacing;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: context.cocoaBean,
            fontFamily: FontEnum.bodoni.rawValue,
            letterSpacing: letterSpacing,
          ),
    );
  }
}
