import 'package:dorilla_games/core/extension/color/color_extension.dart';
import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:dorilla_games/product/enum/flare/flare_enum.dart';
import 'package:dorilla_games/product/enum/font/font_enum.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/page_cubit.dart';
import 'package:dorilla_games/views/responsive-web/view-model/select_page.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        AnimationBackground(),
        MobileAppTitleCard(),
        MobileAppBody(),
      ],
    );
  }
}

class MobileBottomNavigationBar extends StatelessWidget {
  const MobileBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final appCubit = context.watch<PageCubit>();
    return Align(
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
    );
  }
}

class MobileAppBody extends StatelessWidget {
  const MobileAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    final appCubit = context.watch<PageCubit>();
    return Padding(
      padding: context.topPadMobile,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: context.heigthEighty,
            width: context.widthToBeUsed,
            child: SelectMobilePages.getPages(appCubit.state),
          ),
        ],
      ),
    );
  }
}

class MobileAppTitleCard extends StatelessWidget {
  const MobileAppTitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.allSmallPad,
      child: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          height: context.appCardHeight,
          width: context.appCardWidth,
          child: Padding(
            padding: context.smallTextPad,
            child: const AppTitleCard(),
          ),
        ),
      ),
    );
  }
}

class AppTitleCard extends StatelessWidget {
  const AppTitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CardLargeTitle(text: ProjectKeys.appName);
  }
}

class CardLargeTitle extends StatelessWidget {
  const CardLargeTitle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.pampas,
      child: Align(
        alignment: Alignment.center,
        child: LargeTitleTextCocoaFelix(text: text),
      ),
    );
  }
}

class LargeTitleTextCocoaFelix extends StatelessWidget {
  const LargeTitleTextCocoaFelix({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontFamily: FontEnum.felixTi.rawValue,
            color: context.cocoaBean,
          ),
    );
  }
}

class AnimationBackground extends StatelessWidget {
  const AnimationBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.heigth,
      width: context.width,
      child: FlareActor(
        FlareEnum.background.rawValue,
        alignment: Alignment.center,
        fit: BoxFit.cover,
        animation: FlareKeys.midnight.name,
      ),
    );
  }
}
