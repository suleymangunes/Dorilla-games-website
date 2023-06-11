import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/page_cubit.dart';
import 'package:dorilla_games/views/desktop/view/appbar/appbar_app_name.dart';
import 'package:dorilla_games/views/desktop/view/appbar/desktop_app_nav_bar.dart';
import 'package:flutter/material.dart';

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({
    super.key,
    required this.appCubit,
  });

  final PageCubit appCubit;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: context.topPadDesktop,
        child: Row(
          children: [
            const Spacer(flex: 1),
            const AppBarAppName(),
            const Spacer(flex: 8),
            AppBarNavBar(appCubit: appCubit),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
