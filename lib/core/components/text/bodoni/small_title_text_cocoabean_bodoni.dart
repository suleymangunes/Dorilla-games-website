import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/product/enum/font/font_enum.dart';
import 'package:flutter/material.dart';

class SmallTitleTextCocoaBeanBodoni extends StatelessWidget {
  const SmallTitleTextCocoaBeanBodoni({super.key, required this.text, this.maxLine, this.textOverFlow, this.textAlign});
  final String text;
  final int? maxLine;
  final TextOverflow? textOverFlow;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      textAlign: textAlign,
      overflow: textOverFlow,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            fontFamily: FontEnum.bodoni.rawValue,
            color: context.cocoaBean,
          ),
    );
  }
}
