import 'package:dorilla_games/views/mobile/about-us/mobile_about_us_page.dart';
import 'package:dorilla_games/views/mobile/games/mobile_games_page.dart';
import 'package:dorilla_games/views/mobile/home/mobile_home_page.dart';
import 'package:flutter/material.dart';

class SelectMobilePages {
  const SelectMobilePages._();

  static Widget getPages(int pageId) {
    if (pageId == 1) {
      return const MobileGamesPage();
    } else if (pageId == 2) {
      return const MobileAboutUsPage();
    } else {
      return const MobileHomePage();
    }
  }
}
