import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/product/enum/font/font_enum.dart';
import 'package:flutter/material.dart';

class LargeTitleTextCocoaFelix extends StatelessWidget {
  const LargeTitleTextCocoaFelix({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontFamily: FontEnum.felixTi.rawValue,
            color: context.cocoaBean,
          ),
    );
  }
}
