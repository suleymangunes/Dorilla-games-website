import 'package:dorilla_games/core/components/text/bodoni/small_title_text_cocoabean_bodoni.dart';
import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:flutter/material.dart';

class SmallTextAllCard extends StatelessWidget {
  const SmallTextAllCard({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.pampas,
      child: Padding(
        padding: context.smallAllPad,
        child: SmallTitleTextCocoaBeanBodoni(
          text: text,
        ),
      ),
    );
  }
}
