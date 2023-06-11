import 'package:dorilla_games/views/desktop/view-model/cubit/page_cubit.dart';
import 'package:dorilla_games/views/desktop/view/background/animated_background.dart';
import 'package:dorilla_games/views/desktop/view/appbar/desktop_app_bar.dart';
import 'package:dorilla_games/views/desktop/view/desktop_body.dart';
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
              const AnimatedBackground(),
              DesktopAppBar(appCubit: appCubit),
              DesktopBody(appCubit: appCubit),
            ],
          ),
        ],
      ),
    );
  }
}
