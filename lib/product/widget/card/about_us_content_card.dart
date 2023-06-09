import 'package:dorilla_games/core/components/card/body_small_card_with_text.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:flutter/material.dart';

class AboutUsContentCard extends StatelessWidget {
  const AboutUsContentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const BodySmallCardWithText(
      text: ProjectKeys.aboutUsContent,
      maxline: 12,
      textOverflow: TextOverflow.ellipsis,
    );
  }
}
