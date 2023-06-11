import 'package:dorilla_games/core/components/text/bodoni/small_headline_text_bodoni.dart';
import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:flutter/material.dart';

class GamesTitleCard extends StatelessWidget {
  const GamesTitleCard({super.key, required this.appName});
  final String appName;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.pampas,
      child: Padding(
        padding: context.smallTextPad,
        child: SmallHeadlineTextBodoni(
          text: appName,
          letterSpacing: 0.5,
          textAlign: TextAlign.center,
          textOverflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
