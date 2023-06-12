import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/product/enum/font/font_enum.dart';
import 'package:flutter/material.dart';

class MediumTitleTextCocoaBeanBodoni extends StatelessWidget {
  const MediumTitleTextCocoaBeanBodoni(
      {super.key, required this.text, this.textAlign, this.maxLine, this.textOverflow});
  final String text;
  final TextAlign? textAlign;
  final int? maxLine;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: textOverflow,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            fontFamily: FontEnum.bodoni.rawValue,
            color: context.cocoaBean,
            // fontWeight: FontWeight.bold,
          ),
    );
  }
}
