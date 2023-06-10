import 'package:dorilla_games/views/desktop/home/home_page.dart';
import 'package:dorilla_games/views/desktop/view/desktop_view.dart';
import 'package:flutter/material.dart';

class GetBody {
  const GetBody._();
  static Widget get({required int bodyPageId}) {
    if (bodyPageId == 1) {
      return const GamesPage();
    } else if (bodyPageId == 2) {
      return const AboutUsPage();
    } else {
      return const HomePageBody();
    }
  }
}
