import 'package:dorilla_games/core/components/text/felix/large_title_text_cocoa_felix.dart';
import 'package:dorilla_games/core/extension/color/color_extension.dart';
import 'package:flutter/material.dart';

class CardLargeTitle extends StatelessWidget {
  const CardLargeTitle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.pampas,
      child: Align(
        alignment: Alignment.center,
        child: LargeTitleTextCocoaFelix(text: text),
      ),
    );
  }
}
