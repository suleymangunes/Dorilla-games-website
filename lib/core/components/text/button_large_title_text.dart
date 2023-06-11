import 'package:dorilla_games/core/components/text/large_title_text.dart';
import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/product/enum/font/font_enum.dart';
import 'package:flutter/material.dart';

class ButtonLargeTitleText extends StatelessWidget {
  const ButtonLargeTitleText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return LargeTitleText(
      text: text,
      color: context.pampas,
      letterSpacing: 2,
      fontFamily: FontEnum.bodoni.rawValue,
    );
  }
}
