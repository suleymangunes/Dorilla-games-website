import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:dorilla_games/product/widget/card/app_title_card.dart';
import 'package:flutter/material.dart';

class MobileAppTitleCard extends StatelessWidget {
  const MobileAppTitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.allSmallPad,
      child: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          height: context.appCardHeight,
          width: context.appCardWidth,
          child: Padding(
            padding: context.smallTextPad,
            child: const AppTitleCard(),
          ),
        ),
      ),
    );
  }
}
