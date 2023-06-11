import 'package:dorilla_games/core/components/text/text_head_large_with_font.dart';
import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:flutter/material.dart';

class AppBarAppName extends StatelessWidget {
  const AppBarAppName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.appCardHeight,
      width: context.appBarNameWidth,
      child: Card(
        color: context.pampas,
        child: const Align(
          alignment: Alignment.center,
          child: TextHeadlineSmallWithFont(text: ProjectKeys.appName),
        ),
      ),
    );
  }
}
