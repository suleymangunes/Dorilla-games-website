import 'package:carousel_slider/carousel_slider.dart';
import 'package:dorilla_games/core/components/extension/color/color_extension.dart';
import 'package:dorilla_games/core/components/text/text_head_large_with_font.dart';
import 'package:dorilla_games/product/enum/flare/flare_enum.dart';
import 'package:dorilla_games/product/enum/font/font_enum.dart';
import 'package:dorilla_games/product/enum/image/image_enum.dart';
import 'package:dorilla_games/product/enum/svg/svg_enum.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:dorilla_games/views/_products/widgets/text-button/about_text_button.dart';
import 'package:dorilla_games/views/_products/widgets/text-button/games_text_button.dart';
import 'package:dorilla_games/views/_products/widgets/text-button/home_text_button.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/page_cubit.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

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
                        flex: 1,
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

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({
    super.key,
  });

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  bool isSelectedWeb = false;
  bool isSelectedApp = false;
  bool isSelectedGame = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.95,
        child: Row(
          children: [
            const Spacer(flex: 1),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    color: context.backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      child: Text(
                        ProjectKeys.aboutUs,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontFamily: FontEnum.bodoni.rawValue,
                              color: context.titleColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Card(
                    color: context.backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                      child: Text(
                        ProjectKeys.aboutUsContent,
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontFamily: FontEnum.bodoni.rawValue,
                              color: context.titleColor,
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
                        ProjectKeys.stayConnected,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontFamily: FontEnum.bodoni.rawValue,
                              color: context.titleColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      color: context.backgroundColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 20,
                              width: 25,
                              child: SvgPicture.asset(SvgEnum.gmail.getSvg),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                ProjectKeys.gmail,
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                      fontFamily: FontEnum.bodoni.rawValue,
                                      color: context.titleColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 250,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: SvgPicture.asset(SvgEnum.github.getSvg),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: SvgPicture.asset(SvgEnum.play.getSvg),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: SvgPicture.asset(SvgEnum.linkedin.getSvg),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: SvgPicture.asset(SvgEnum.youtube.getSvg),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(flex: 4),
                ],
              ),
            ),
            const Spacer(flex: 1),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    color: context.backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      child: Text(
                        ProjectKeys.contactMe,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontFamily: FontEnum.bodoni.rawValue,
                              color: context.titleColor,
                              // fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                          child: TextFormField(
                            cursorColor: context.titleColor,
                            decoration: InputDecoration(
                              hintText: ProjectKeys.name,
                              hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: context.titleColor,
                                    fontFamily: FontEnum.bodoni.rawValue,
                                  ),
                              border: const OutlineInputBorder(),
                              filled: true,
                              fillColor: context.backgroundColor,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: context.titleColor),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: TextFormField(
                            cursorColor: context.titleColor,
                            decoration: InputDecoration(
                              hintText: ProjectKeys.email,
                              hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: context.titleColor,
                                    fontFamily: FontEnum.bodoni.rawValue,
                                  ),
                              border: const OutlineInputBorder(),
                              filled: true,
                              fillColor: context.backgroundColor,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: context.titleColor),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelectedWeb = !isSelectedWeb;
                          });
                        },
                        child: Column(
                          children: [
                            Card(
                              color: isSelectedWeb ? context.backgroundColor : Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: SizedBox(
                                height: 60,
                                width: 60,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: SvgPicture.asset(SvgEnum.web.getSvg),
                                ),
                              ),
                            ),
                            Card(
                              color: context.backgroundColor,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 3),
                                child: Text(
                                  ProjectKeys.web,
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                        color: context.titleColor,
                                        fontFamily: FontEnum.bodoni.rawValue,
                                      ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelectedApp = !isSelectedApp;
                          });
                        },
                        child: Column(
                          children: [
                            Card(
                              color: isSelectedApp ? context.backgroundColor : Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: SizedBox(
                                height: 60,
                                width: 60,
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: SvgPicture.asset(SvgEnum.app.getSvg),
                                ),
                              ),
                            ),
                            Card(
                              color: context.backgroundColor,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 3),
                                child: Text(
                                  ProjectKeys.app,
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                        color: context.titleColor,
                                        fontFamily: FontEnum.bodoni.rawValue,
                                      ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelectedGame = !isSelectedGame;
                          });
                        },
                        child: Column(
                          children: [
                            Card(
                              color: isSelectedGame ? context.backgroundColor : Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: SizedBox(
                                height: 60,
                                width: 60,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: SvgPicture.asset(SvgEnum.game.getSvg),
                                ),
                              ),
                            ),
                            Card(
                              color: context.backgroundColor,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 3),
                                child: Text(
                                  ProjectKeys.game,
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                        color: context.titleColor,
                                        fontFamily: FontEnum.bodoni.rawValue,
                                      ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TextFormField(
                      minLines: 4,
                      maxLines: 4,
                      cursorColor: context.titleColor,
                      decoration: InputDecoration(
                        hintText: ProjectKeys.tellMe,
                        hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: context.titleColor,
                              fontFamily: FontEnum.bodoni.rawValue,
                            ),
                        border: const OutlineInputBorder(),
                        filled: true,
                        fillColor: context.backgroundColor,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: context.titleColor),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(context.titleColor),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                        child: Text(
                          ProjectKeys.send,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: context.backgroundColor, fontFamily: FontEnum.bodoni.rawValue, letterSpacing: 2),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}

class GamesPage extends StatefulWidget {
  const GamesPage({
    super.key,
  });

  @override
  State<GamesPage> createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  double storeLogoSize = 150;
  bool isStoreLogoHover = false;

  @override
  Widget build(BuildContext context) {
    final appCubit = context.watch<PageCubit>();
    return ListView(
      children: [
        Row(
          children: [
            const Spacer(flex: 3),
            SizedBox(
              height: 600,
              width: 280,
              child: CarouselSlider(
                items: [
                  SizedBox(width: 240, child: Image.asset(ImageEnum.screen.rawValue)),
                  SizedBox(width: 240, child: Image.asset(ImageEnum.screen.rawValue)),
                  SizedBox(width: 240, child: Image.asset(ImageEnum.screen.rawValue)),
                  SizedBox(width: 240, child: Image.asset(ImageEnum.screen.rawValue)),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                ),
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
                          "CodeRiddle",
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
                          "Coderiddle: Merge Coding with Puzzles!\nCoderiddle is one of the best ways to learn and practice coding in a fun way. We invite you to a world filled with unique puzzles and challenging questions. Coderiddle is designed for coding enthusiasts of all levels, catering to both beginners and experienced programmers. So, let's embark on an enchanting journey into the world of coding with Coderiddle! Push your boundaries, sharpen your intellect, and join in on the exciting adventure of enhancing your coding skills. Coderiddle awaits you, combining coding with puzzles!",
                          textAlign: TextAlign.center,
                          maxLines: 9,
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
                    InkWell(
                      onTap: () {
                        UrlLauncher._launchUrl("https://pub.dev/packages/url_launcher");
                      },
                      onHover: (value) {
                        setState(() {
                          isStoreLogoHover = value;
                        });
                      },
                      child: SizedBox(
                        width: isStoreLogoHover ? 200 : 150,
                        child: Image.asset(ImageEnum.store.rawValue),
                      ),
                    ),
                    const Spacer(flex: 4),
                  ],
                ),
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
        Row(
          children: [
            const Spacer(flex: 3),
            SizedBox(
              height: 600,
              width: 280,
              child: CarouselSlider(
                items: [
                  SizedBox(width: 240, child: Image.asset(ImageEnum.screen.rawValue)),
                  SizedBox(width: 240, child: Image.asset(ImageEnum.screen.rawValue)),
                  SizedBox(width: 240, child: Image.asset(ImageEnum.screen.rawValue)),
                  SizedBox(width: 240, child: Image.asset(ImageEnum.screen.rawValue)),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                ),
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
                          "CodeRiddle",
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
                          "Coderiddle: Merge Coding with Puzzles!\nCoderiddle is one of the best ways to learn and practice coding in a fun way. We invite you to a world filled with unique puzzles and challenging questions. Coderiddle is designed for coding enthusiasts of all levels, catering to both beginners and experienced programmers. So, let's embark on an enchanting journey into the world of coding with Coderiddle! Push your boundaries, sharpen your intellect, and join in on the exciting adventure of enhancing your coding skills. Coderiddle awaits you, combining coding with puzzles!",
                          textAlign: TextAlign.center,
                          maxLines: 9,
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
                    InkWell(
                      onTap: () {
                        UrlLauncher._launchUrl("https://pub.dev/packages/url_launcher");
                      },
                      onHover: (value) {
                        setState(() {
                          isStoreLogoHover = value;
                        });
                      },
                      child: SizedBox(
                        width: isStoreLogoHover ? 200 : 150,
                        child: Image.asset(ImageEnum.store.rawValue),
                      ),
                    ),
                    const Spacer(flex: 4),
                  ],
                ),
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ],
    );
  }
}

class UrlLauncher {
  static Future<void> _launchUrl(String getUrl) async {
    final url = Uri.parse(getUrl);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
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
      const Spacer(flex: 3),
      SizedBox(
        width: 280,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(ImageEnum.logo.rawValue),
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
