import 'package:dorilla_games/core/components/text/bodoni/small_title_text_cocoabean_bodoni.dart';
import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:flutter/material.dart';

class CardSmallTitleText extends StatelessWidget {
  const CardSmallTitleText({super.key, required this.text, this.textAlign, this.maxLine, this.textOverflow});
  final String text;
  final TextAlign? textAlign;
  final int? maxLine;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.pampas,
      child: Padding(
        padding: context.smallTextPad,
        child: SmallTitleTextCocoaBeanBodoni(
          text: text,
          textAlign: textAlign,
          maxLine: maxLine,
          textOverFlow: textOverflow,
        ),
      ),
    );
  }
}
