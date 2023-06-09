import 'package:dorilla_games/core/service/email/email_launcher.dart';
import 'package:dorilla_games/product/enum/svg/svg_enum.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:dorilla_games/product/widget/card/clickable-card/clickable_url_card.dart';
import 'package:flutter/material.dart';

class ClickableMailCard extends StatelessWidget {
  const ClickableMailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClickableUrlCard(
      picture: SvgEnum.gmail.getSvg,
      platform: ProjectKeys.gmail,
      function: () {
        EmailLauncher().launchEmail();
      },
    );
  }
}
