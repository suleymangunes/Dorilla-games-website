import 'package:carousel_slider/carousel_slider.dart';
import 'package:dorilla_games/core/extension/color/color_extension.dart';
import 'package:dorilla_games/core/service/url/url_launcher_singleton.dart';
import 'package:dorilla_games/product/enum/flare/flare_enum.dart';
import 'package:dorilla_games/product/enum/font/font_enum.dart';
import 'package:dorilla_games/product/enum/image/image_enum.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/page_cubit.dart';
import 'package:dorilla_games/views/mobile/about-us/view/mobile_about_us_page.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final appCubit = context.watch<PageCubit>();
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: FlareActor(FlareEnum.background.rawValue,
              alignment: Alignment.center, fit: BoxFit.cover, animation: FlareKeys.midnight.name),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 55,
              width: 220,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                child: Card(
                  color: context.pampas,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      ProjectKeys.appName,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontFamily: FontEnum.felixTi.rawValue,
                            color: context.cocoaBean,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width * 0.95,
                child: SelectMobilePages.getPages(appCubit.state),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomNavigationBar(
            currentIndex: appCubit.state,
            selectedItemColor: context.cocoaBean,
            backgroundColor: context.pampas,
            onTap: (value) {
              appCubit.updateActiveButton(value);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: ProjectKeys.home,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.games_outlined),
                label: ProjectKeys.games,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.contact_phone_outlined),
                label: ProjectKeys.aboutUs,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appCubit = context.watch<PageCubit>();
    return Column(
      children: [
        const Spacer(flex: 5),
        SizedBox(
          height: 200,
          child: Image.asset(ImageEnum.logo.rawValue),
        ),
        const Spacer(flex: 2),
        Card(
          color: context.pampas,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            child: Text(
              ProjectKeys.welcomeTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontFamily: FontEnum.bodoni.rawValue,
                  ),
            ),
          ),
        ),
        const Spacer(flex: 1),
        Card(
          color: context.pampas,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Text(
              ProjectKeys.welcomeContent,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontFamily: FontEnum.bodoni.rawValue,
                  ),
            ),
          ),
        ),
        const Spacer(flex: 1),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(context.cocoaBean),
          ),
          onPressed: () {
            appCubit.updateActiveButton(1);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
            child: Text(
              ProjectKeys.getStarted,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: context.pampas, fontFamily: FontEnum.bodoni.rawValue, letterSpacing: 2),
            ),
          ),
        ),
        const Spacer(flex: 2),
      ],
    );
  }
}

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

class MobileGamesPage extends StatefulWidget {
  const MobileGamesPage({
    super.key,
  });

  @override
  State<MobileGamesPage> createState() => _MobileGamesPageState();
}

class _MobileGamesPageState extends State<MobileGamesPage> {
  bool isStoreLogoHover = false;
  @override
  Widget build(BuildContext context) {
    final appCubit = context.watch<PageCubit>();
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 350,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: CarouselSlider(
                      items: [
                        Image.asset(ImageEnum.screen.rawValue),
                        // SizedBox(width: 220, child: Image.asset(ImageEnum.screen.rawValue)),
                        // SizedBox(width: 220, child: Image.asset(ImageEnum.screen.rawValue)),
                        SizedBox(width: 220, child: Image.asset(ImageEnum.screen.rawValue)),
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                        viewportFraction: 1,
                        aspectRatio: 1.3,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Card(
                        color: context.pampas,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          child: Text(
                            "CodeRiddle",
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontFamily: FontEnum.bodoni.rawValue,
                                  color: context.cocoaBean,
                                ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Card(
                          color: context.pampas,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                            child: Text(
                              "Coderiddle: Merge Coding with Puzzles!\nCoderiddle is one of the best ways to learn and practice coding in a fun way.",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontFamily: FontEnum.bodoni.rawValue,
                                    color: context.cocoaBean,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          UrlLauncherSingleton.launch("https://pub.dev/packages/url_launcher");
                        },
                        child: SizedBox(
                          width: 125,
                          child: Image.asset(ImageEnum.store.rawValue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Card(
                color: context.pampas,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Text(
                    "We invite you to a world filled with unique puzzles and challenging questions. Coderiddle is designed for coding enthusiasts of all levels, catering to both beginners and experienced programmers. So, let's embark on an enchanting journey into the world of coding with Coderiddle! Push your boundaries, sharpen your intellect, and join in on the exciting adventure of enhancing your coding skills. Coderiddle awaits you, combining coding with puzzles!",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: context.cocoaBean,
                          fontFamily: FontEnum.bodoni.rawValue,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 350,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: CarouselSlider(
                      items: [
                        Image.asset(ImageEnum.screen.rawValue),
                        // SizedBox(width: 220, child: Image.asset(ImageEnum.screen.rawValue)),
                        // SizedBox(width: 220, child: Image.asset(ImageEnum.screen.rawValue)),
                        SizedBox(width: 220, child: Image.asset(ImageEnum.screen.rawValue)),
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                        viewportFraction: 1,
                        aspectRatio: 1.3,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Card(
                        color: context.pampas,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          child: Text(
                            "CodeRiddle",
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontFamily: FontEnum.bodoni.rawValue,
                                  color: context.cocoaBean,
                                ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Card(
                          color: context.pampas,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                            child: Text(
                              "Coderiddle: Merge Coding with Puzzles!\nCoderiddle is one of the best ways to learn and practice coding in a fun way.",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontFamily: FontEnum.bodoni.rawValue,
                                    color: context.cocoaBean,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          UrlLauncherSingleton.launch("https://pub.dev/packages/url_launcher");
                        },
                        child: SizedBox(
                          width: 125,
                          child: Image.asset(ImageEnum.store.rawValue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Card(
                color: context.pampas,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Text(
                    "We invite you to a world filled with unique puzzles and challenging questions. Coderiddle is designed for coding enthusiasts of all levels, catering to both beginners and experienced programmers. So, let's embark on an enchanting journey into the world of coding with Coderiddle! Push your boundaries, sharpen your intellect, and join in on the exciting adventure of enhancing your coding skills. Coderiddle awaits you, combining coding with puzzles!",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: context.cocoaBean,
                          fontFamily: FontEnum.bodoni.rawValue,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
