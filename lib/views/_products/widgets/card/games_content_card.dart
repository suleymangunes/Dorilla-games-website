import 'package:dorilla_games/core/components/text/bodoni/medium_title_text_cocabean_bodoni.dart';
import 'package:dorilla_games/core/extension/color/color_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:flutter/material.dart';

class GamesContentCard extends StatelessWidget {
  const GamesContentCard({super.key, required this.appContent});
  final String appContent;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.pampas,
      child: Padding(
        padding: context.desktopContentPad,
        child: MediumTitleTextCocoaBeanBodoni(
          text: appContent,
          maxLine: 8,
          textAlign: TextAlign.center,
          textOverflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
