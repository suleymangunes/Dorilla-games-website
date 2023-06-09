import 'package:dorilla_games/core/components/text/bodoni/medium_title_text_cocabean_bodoni.dart';
import 'package:dorilla_games/core/extension/color/color_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:flutter/material.dart';

class TitleMediumCard extends StatelessWidget {
  const TitleMediumCard({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.pampas,
      child: Padding(
        padding: context.smallTextPad,
        child: MediumTitleTextCocoaBeanBodoni(text: text),
      ),
    );
  }
}
