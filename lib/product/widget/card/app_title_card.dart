import 'package:dorilla_games/core/components/card/card_large_title.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:flutter/material.dart';

class AppTitleCard extends StatelessWidget {
  const AppTitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CardLargeTitle(text: ProjectKeys.appName);
  }
}
