import 'package:dorilla_games/core/components/extension/color/color_extension.dart';
import 'package:dorilla_games/product/enum/font/font_enum.dart';
import 'package:flutter/material.dart';

class TextHeadlineSmallWithFont extends StatelessWidget {
  const TextHeadlineSmallWithFont({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontFamily: FontEnum.felixTi.rawValue,
            color: context.titleColor,
            letterSpacing: 1.5,
          ),
    );
  }
}
