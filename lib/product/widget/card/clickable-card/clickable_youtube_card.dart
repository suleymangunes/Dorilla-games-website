import 'package:dorilla_games/core/service/url/url_launcher_singleton.dart';
import 'package:dorilla_games/product/enum/svg/svg_enum.dart';
import 'package:dorilla_games/product/enum/url/url_enum.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:dorilla_games/product/widget/card/clickable-card/clickable_url_card.dart';
import 'package:flutter/material.dart';

class ClickableYoutubeCard extends StatelessWidget {
  const ClickableYoutubeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClickableUrlCard(
      picture: SvgEnum.youtube.getSvg,
      platform: ProjectKeys.youtube,
      function: () {
        UrlLauncherSingleton.launch(UrlEnum.youtube.getUrl);
      },
    );
  }
}
