import 'package:dorilla_games/views/_products/games/dorilla/dorilla_games_content.dart';
import 'package:flutter/material.dart';

class MobileGamesPage extends StatelessWidget {
  const MobileGamesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: const [
        DorillaGamesContent(),
      ],
    );
  }
}
