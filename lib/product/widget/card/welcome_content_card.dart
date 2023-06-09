import 'package:dorilla_games/core/components/card/card_smile_title_text.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:flutter/material.dart';

class WelcomeContentCard extends StatelessWidget {
  const WelcomeContentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CardSmallTitleText(
      text: ProjectKeys.welcomeContent,
      textAlign: TextAlign.center,
    );
  }
}
