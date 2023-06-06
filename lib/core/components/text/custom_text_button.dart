import 'package:dorilla_games/core/components/extension/color/color_extension.dart';
import 'package:dorilla_games/core/components/extension/padding/project_pads.dart';
import 'package:dorilla_games/product/enum/font/font_enum.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/page_cubit.dart';
import 'package:dorilla_games/views/desktop/view-model/underline/text_underline.dart';
import 'package:flutter/material.dart';

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
                fontFamily: FontEnum.bodoni.rawValue,
              ),
        ),
      ),
    );
  }
}
