import 'package:dorilla_games/core/components/extension/color/color_extension.dart';
import 'package:dorilla_games/core/components/text/text_head_large_with_font.dart';
import 'package:dorilla_games/product/enum/flare/flare_enum.dart';
import 'package:dorilla_games/product/enum/font/font_enum.dart';
import 'package:dorilla_games/product/enum/logo/logo_enum.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:dorilla_games/views/_products/widgets/text-button/about_text_button.dart';
import 'package:dorilla_games/views/_products/widgets/text-button/games_text_button.dart';
import 'package:dorilla_games/views/_products/widgets/text-button/home_text_button.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/page_cubit.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    final appCubit = context.watch<PageCubit>();
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: FlareActor(
                  FlareEnum.background.rawValue,
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  animation: FlareKeys.midnight.name,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
                  child: Row(
                    children: [
                      const Spacer(
                        flex: 1,
                      ),
                      SizedBox(
                        height: 55,
                        width: 280,
                        child: Card(
                          color: context.backgroundColor,
                          child: const Align(
                            alignment: Alignment.center,
                            child: TextHeadlineSmallWithFont(text: ProjectKeys.appName),
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 8,
                      ),
                      SizedBox(
                        height: 55,
                        width: 300,
                        child: Card(
                          color: context.backgroundColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Spacer(flex: 3),
                              HomeButton(appCubit: appCubit),
                              const Spacer(flex: 1),
                              GamesButton(appCubit: appCubit),
                              const Spacer(flex: 1),
                              AboutUsButton(appCubit: appCubit),
                              const Spacer(flex: 3),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 600,
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: GetBody.get(bodyPageId: appCubit.state),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class GetBody {
  const GetBody._();
  static StatelessWidget get({required int bodyPageId}) {
    if (bodyPageId == 1) {
      return Container(
        height: 200,
        width: 200,
        color: Colors.red,
      );
    } else if (bodyPageId == 2) {
      return Container(
        height: 200,
        width: 200,
        color: Colors.yellow,
      );
    } else {
      return const HomePageBody();
    }
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appCubit = context.watch<PageCubit>();
    return Row(children: [
      const Spacer(flex: 1),
      SizedBox(
        width: 280,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(LogoEnum.logo.rawValue),
        ),
      ),
      const Spacer(flex: 15),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Spacer(flex: 3),
              Card(
                color: context.backgroundColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                  child: Text(
                    ProjectKeys.welcomeTitle,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: context.titleColor,
                          fontFamily: FontEnum.bodoni.rawValue,
                          letterSpacing: 0.5,
                        ),
                  ),
                ),
              ),
              const Spacer(flex: 1),
              Card(
                color: context.backgroundColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                  child: Text(
                    ProjectKeys.welcomeContent,
                    textAlign: TextAlign.center,
                    maxLines: 8,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          // color: const Color.fromRGBO(174, 95, 42, 1),
                          color: context.titleColor,
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
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                  child: Text(
                    ProjectKeys.getStarted,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: context.backgroundColor, fontFamily: FontEnum.bodoni.rawValue, letterSpacing: 2),
                  ),
                ),
              ),
              const Spacer(flex: 4),
            ],
          ),
        ),
      ),
      const Spacer(flex: 2),
    ]);
  }
}
