import 'package:dorilla_games/core/components/extension/color/color_extension.dart';
import 'package:dorilla_games/product/enum/flare/flare_enum.dart';
import 'package:dorilla_games/product/enum/font/font_enum.dart';
import 'package:dorilla_games/product/enum/logo/logo_enum.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/page_cubit.dart';
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
                  color: context.backgroundColor,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      ProjectKeys.appName,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontFamily: FontEnum.felixTi.rawValue,
                            color: context.titleColor,
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
            selectedItemColor: context.titleColor,
            backgroundColor: context.backgroundColor,
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
          child: Image.asset(LogoEnum.logo.rawValue),
        ),
        const Spacer(flex: 2),
        Card(
          color: context.backgroundColor,
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
          color: context.backgroundColor,
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
            backgroundColor: MaterialStateProperty.all(context.titleColor),
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
                  ?.copyWith(color: context.backgroundColor, fontFamily: FontEnum.bodoni.rawValue, letterSpacing: 2),
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

  static StatelessWidget getPages(int pageId) {
    if (pageId == 1) {
      return const MobileGamesPage();
    } else if (pageId == 2) {
      return const MobileAboutUsPage();
    } else {
      return const MobileHomePage();
    }
  }
}

class MobileGamesPage extends StatelessWidget {
  const MobileGamesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.blue,
      child: Text("hi"),
    );
  }
}

class MobileAboutUsPage extends StatelessWidget {
  const MobileAboutUsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.green,
      child: Text("hi"),
    );
  }
}
