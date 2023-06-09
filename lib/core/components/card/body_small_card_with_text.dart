import 'package:dorilla_games/core/components/text/bodoni/small_body_text_cocoa_bodoni.dart';
import 'package:dorilla_games/core/extension/color/color_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:flutter/material.dart';

class BodySmallCardWithText extends StatelessWidget {
  const BodySmallCardWithText({super.key, required this.text, this.textOverflow, this.maxline});
  final String text;
  final TextOverflow? textOverflow;
  final int? maxline;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.pampas,
      child: Padding(
        padding: context.smallTextPad,
        child: SmallBodyTextCocoaBeanBodoni(
          text: text,
          maxLine: maxline,
          textOverFlow: textOverflow,
        ),
      ),
    );
  }
}
