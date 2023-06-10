import 'package:dorilla_games/core/extension/color/color_extension.dart';
import 'package:dorilla_games/core/components/text/text_head_large_with_font.dart';
import 'package:dorilla_games/product/enum/flare/flare_enum.dart';
import 'package:dorilla_games/product/enum/font/font_enum.dart';
import 'package:dorilla_games/product/enum/svg/svg_enum.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:dorilla_games/views/_products/widgets/text-button/about_text_button.dart';
import 'package:dorilla_games/views/_products/widgets/text-button/games_text_button.dart';
import 'package:dorilla_games/views/_products/widgets/text-button/home_text_button.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/page_cubit.dart';
import 'package:dorilla_games/views/desktop/view-model/get-body/get_body.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                          color: context.pampas,
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
                          color: context.pampas,
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
                    color: context.pampas,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      child: Text(
                        ProjectKeys.aboutUs,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontFamily: FontEnum.bodoni.rawValue,
                              color: context.cocoaBean,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Card(
                    color: context.pampas,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                      child: Text(
                        ProjectKeys.aboutUsContent,
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontFamily: FontEnum.bodoni.rawValue,
                              color: context.cocoaBean,
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
                        ProjectKeys.stayConnected,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontFamily: FontEnum.bodoni.rawValue,
                              color: context.cocoaBean,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      color: context.pampas,
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
                                      color: context.cocoaBean,
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
                    color: context.pampas,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      child: Text(
                        ProjectKeys.contactMe,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontFamily: FontEnum.bodoni.rawValue,
                              color: context.cocoaBean,
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
                            cursorColor: context.cocoaBean,
                            decoration: InputDecoration(
                              hintText: ProjectKeys.name,
                              hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: context.cocoaBean,
                                    fontFamily: FontEnum.bodoni.rawValue,
                                  ),
                              border: const OutlineInputBorder(),
                              filled: true,
                              fillColor: context.pampas,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: context.cocoaBean),
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
                            cursorColor: context.cocoaBean,
                            decoration: InputDecoration(
                              hintText: ProjectKeys.email,
                              hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: context.cocoaBean,
                                    fontFamily: FontEnum.bodoni.rawValue,
                                  ),
                              border: const OutlineInputBorder(),
                              filled: true,
                              fillColor: context.pampas,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: context.cocoaBean),
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
                              color: isSelectedWeb ? context.pampas : Colors.transparent,
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
                              color: context.pampas,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 3),
                                child: Text(
                                  ProjectKeys.web,
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                        color: context.cocoaBean,
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
                              color: isSelectedApp ? context.pampas : Colors.transparent,
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
                              color: context.pampas,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 3),
                                child: Text(
                                  ProjectKeys.app,
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                        color: context.cocoaBean,
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
                              color: isSelectedGame ? context.pampas : Colors.transparent,
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
                              color: context.pampas,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 3),
                                child: Text(
                                  ProjectKeys.game,
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                        color: context.cocoaBean,
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
                      cursorColor: context.cocoaBean,
                      decoration: InputDecoration(
                        hintText: ProjectKeys.tellMe,
                        hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: context.cocoaBean,
                              fontFamily: FontEnum.bodoni.rawValue,
                            ),
                        border: const OutlineInputBorder(),
                        filled: true,
                        fillColor: context.pampas,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: context.cocoaBean),
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
                        backgroundColor: MaterialStateProperty.all(context.cocoaBean),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                        child: Text(
                          ProjectKeys.send,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: context.pampas, fontFamily: FontEnum.bodoni.rawValue, letterSpacing: 2),
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
