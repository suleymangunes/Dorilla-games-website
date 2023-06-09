import 'package:dorilla_games/core/extension/color/color_extension.dart';
import 'package:dorilla_games/product/enum/font/font_enum.dart';
import 'package:flutter/material.dart';

class MediumTitleTextCocoaBeanBodoni extends StatelessWidget {
  const MediumTitleTextCocoaBeanBodoni({super.key, required this.text, this.textAlign});
  final String text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontFamily: FontEnum.bodoni.rawValue,
            color: context.cocoaBean,
            // fontWeight: FontWeight.bold,
          ),
    );
  }
}
