import 'package:dorilla_games/product/widget/button/get_started_button.dart';
import 'package:dorilla_games/product/widget/card/welcome_content_card.dart';
import 'package:dorilla_games/product/widget/card/welcome_title_card.dart';
import 'package:dorilla_games/product/widget/image/medium_logo.dart';
import 'package:flutter/material.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Spacer(flex: 5),
        MediumLogo(),
        Spacer(flex: 2),
        WelcomeTitleCard(),
        Spacer(flex: 1),
        WelcomeContentCard(),
        Spacer(flex: 1),
        GetStartedButton(),
        Spacer(flex: 3),
      ],
    );
  }
}
