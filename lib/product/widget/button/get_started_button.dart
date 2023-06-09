import 'package:dorilla_games/core/components/button/button_with_large_title_text.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    final appCubit = context.watch<PageCubit>();
    return ButtonWithLargeText(
      text: ProjectKeys.getStarted,
      function: () {
        appCubit.updateActiveButton(1);
      },
    );
  }
}
