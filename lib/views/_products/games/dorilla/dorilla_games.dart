import 'package:dorilla_games/product/enum/jpg/jpg_enum.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:flutter/material.dart';

class DorillaGames {
  static const appName = "Dorilla Games";
  static const appDescription = ProjectKeys.welcomeTitle;

  static const appContent = ProjectKeys.welcomeContent;

  static const goUrl = "https://www.youtube.com/watch?v=QxHkLdQy5f0&list=RDMM&index=13";

  static final images = [
    Image.asset(ScreenEnum.home.rawValue),
    Image.asset(ScreenEnum.games.rawValue),
    Image.asset(ScreenEnum.about.rawValue),
  ];
}
