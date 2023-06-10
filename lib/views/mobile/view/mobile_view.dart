import 'package:dorilla_games/core/components/flare/animation_background.dart';
import 'package:dorilla_games/views/_products/widgets/body/mobile_app_body.dart';
import 'package:dorilla_games/views/_products/widgets/bottom-navigation-bar/mobile_bottom_navigationbar.dart';
import 'package:dorilla_games/views/_products/widgets/card/mobile_app_title_card.dart';
import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        AnimationBackground(),
        MobileAppTitleCard(),
        MobileAppBody(),
        MobileBottomNavigationBar(),
      ],
    );
  }
}
