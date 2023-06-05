import 'package:dorilla_games/core/components/extension/color/color_extension.dart';
import 'package:dorilla_games/core/components/text/text_head_large_with_font.dart';
import 'package:dorilla_games/product/enum/logo/logo_enum.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
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
                child: const FlareActor(
                  "assets/animation/background.flr",
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  animation: "midnight",
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
                        height: 80,
                        width: 430,
                        child: Card(
                          color: context.backgroundColor,
                          child: const Align(
                              alignment: Alignment.center, child: TextDisplaySmallWithFont(text: ProjectKeys.appName)),
                        ),
                      ),
                      const Spacer(
                        flex: 15,
                      ),
                      SizedBox(
                        height: 80,
                        width: 530,
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
                padding: const EdgeInsets.only(top: 250),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 700,
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: Row(
                        children: [
                          const Spacer(flex: 1),
                          SizedBox(
                            width: 360,
                            height: 600,
                            child: Card(
                              color: context.backgroundColor,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset(LogoEnum.logo.rawValue),
                              ),
                            ),
                          ),
                          const Spacer(flex: 15),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: 600,
                            child: Card(
                              color: context.backgroundColor,
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Column(
                                  children: [
                                    const Spacer(flex: 1),
                                    Text(
                                      ProjectKeys.welcomeTitle,
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                            color: context.titleColor,
                                          ),
                                    ),
                                    const Spacer(flex: 3),
                                    Text(
                                      ProjectKeys.welcomeContent,
                                      textAlign: TextAlign.center,
                                      maxLines: 8,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                            color: context.titleColor,
                                          ),
                                    ),
                                    const Spacer(flex: 6),
                                    ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(context.titleColor),
                                      ),
                                      onPressed: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          ProjectKeys.getStarted,
                                          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                                color: context.backgroundColor,
                                              ),
                                        ),
                                      ),
                                    ),
                                    const Spacer(flex: 3),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Spacer(flex: 2),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TextUnderline {
  TextDecoration getType(int state, int mine) {
    return state == mine ? TextDecoration.underline : TextDecoration.none;
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton({super.key, required this.appCubit});
  final PageCubit appCubit;

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      appCubit: appCubit,
      text: ProjectKeys.home,
      buttonId: 0,
    );
  }
}

class GamesButton extends StatelessWidget {
  const GamesButton({super.key, required this.appCubit});
  final PageCubit appCubit;

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      appCubit: appCubit,
      text: ProjectKeys.games,
      buttonId: 1,
    );
  }
}

class AboutUsButton extends StatelessWidget {
  const AboutUsButton({super.key, required this.appCubit});
  final PageCubit appCubit;

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      appCubit: appCubit,
      text: ProjectKeys.aboutUs,
      buttonId: 2,
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.appCubit, required this.text, required this.buttonId});
  final PageCubit appCubit;
  final String text;
  final int buttonId;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(context.hoverColor),
      ),
      onPressed: () => appCubit.updateActiveButton(buttonId),
      child: Padding(
        padding: context.textButtonPadding,
        child: Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                decoration: TextUnderline().getType(appCubit.state, buttonId),
              ),
        ),
      ),
    );
  }
}

extension ProjectPads on BuildContext {
  EdgeInsets get textButtonPadding => const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20);
}
