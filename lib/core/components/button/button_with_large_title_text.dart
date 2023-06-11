import 'package:dorilla_games/core/components/text/button_large_title_text.dart';
import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:flutter/material.dart';

class ButtonWithLargeText extends StatelessWidget {
  const ButtonWithLargeText({super.key, required this.text, required this.function});
  final String text;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(context.cocoaBean),
      ),
      onPressed: function,
      child: Padding(
        padding: context.smallTextPad,
        child: ButtonLargeTitleText(text: text),
      ),
    );
  }
}
