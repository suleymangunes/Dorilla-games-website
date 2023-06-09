import 'package:dorilla_games/core/components/card/title_medium_card.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:flutter/material.dart';

class ContactUsCard extends StatelessWidget {
  const ContactUsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const TitleMediumCard(text: ProjectKeys.contactMe);
  }
}
