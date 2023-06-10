import 'package:dorilla_games/views/_products/games/dorilla/dorilla_desktop_games_content.dart';
import 'package:dorilla_games/views/desktop/games/cubit/make_button_bigger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MakeButtonBigger(),
      child: ListView(
        children: const [
          DesktopDorillaGamesContent(),
        ],
      ),
    );
  }
}
