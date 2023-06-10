import 'package:dorilla_games/views/_products/widgets/content/welcome_content.dart';
import 'package:dorilla_games/views/_products/widgets/logo/desktop_big_logo.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: const [
      Spacer(flex: 3),
      DesktopBigLogo(),
      Spacer(flex: 15),
      DesktopWelcomeContent(),
      Spacer(flex: 2),
    ]);
  }
}
