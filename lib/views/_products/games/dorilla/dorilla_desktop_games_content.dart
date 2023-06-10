import 'package:dorilla_games/views/_products/games/dorilla/dorilla_games.dart';
import 'package:dorilla_games/views/_products/widgets/content/desktop_games_content.dart';
import 'package:flutter/material.dart';

class DesktopDorillaGamesContent extends StatelessWidget {
  const DesktopDorillaGamesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return DesktopGamesContent(
      images: DorillaGames.images,
      appName: DorillaGames.appName,
      appContent: DorillaGames.appContent,
      url: DorillaGames.goUrl,
    );
  }
}
