import 'package:dorilla_games/core/extension/color/color_extension.dart';
import 'package:dorilla_games/product/enum/font/font_enum.dart';
import 'package:flutter/material.dart';

class SmallTitleTextCocoaBeanBodoni extends StatelessWidget {
  const SmallTitleTextCocoaBeanBodoni({super.key, required this.text, this.maxLine, this.textOverFlow});
  final String text;
  final int? maxLine;
  final TextOverflow? textOverFlow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      overflow: textOverFlow,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
            fontFamily: FontEnum.bodoni.rawValue,
            color: context.cocoaBean,
          ),
    );
  }
}
