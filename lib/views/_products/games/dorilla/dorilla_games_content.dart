import 'package:dorilla_games/views/_products/games/dorilla/dorilla_games.dart';
import 'package:dorilla_games/views/_products/sample/game_content_sample.dart';
import 'package:flutter/material.dart';

class DorillaGamesContent extends StatelessWidget {
  const DorillaGamesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return GameContentSample(
      images: DorillaGames.images,
      appName: DorillaGames.appName,
      appDescription: DorillaGames.appDescription,
      url: DorillaGames.goUrl,
      appContent: DorillaGames.appContent,
    );
  }
}
