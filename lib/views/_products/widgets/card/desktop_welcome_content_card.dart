import 'package:dorilla_games/core/components/text/bodoni/medium_title_text_cocabean_bodoni.dart';
import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:flutter/material.dart';

class DesktopWelcomeContentCard extends StatelessWidget {
  const DesktopWelcomeContentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.pampas,
      child: Padding(
        padding: context.desktopContentPad,
        child: const MediumTitleTextCocoaBeanBodoni(
          text: ProjectKeys.welcomeContent,
          maxLine: 8,
          textAlign: TextAlign.center,
          textOverflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
