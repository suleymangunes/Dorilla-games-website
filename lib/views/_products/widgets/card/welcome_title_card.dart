import 'package:dorilla_games/core/components/text/bodoni/small_headline_text_bodoni.dart';
import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:flutter/material.dart';

class DesktopWelcomeTitleCard extends StatelessWidget {
  const DesktopWelcomeTitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.pampas,
      child: Padding(
        padding: context.smallTextPad,
        child: const SmallHeadlineTextBodoni(
          text: ProjectKeys.welcomeTitle,
          letterSpacing: 0.5,
          textAlign: TextAlign.center,
          textOverflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
