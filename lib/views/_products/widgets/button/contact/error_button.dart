import 'package:dorilla_games/core/components/text/bodoni/large_title_text_bodoni.dart';
import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:flutter/material.dart';

class ErrorButton extends StatelessWidget {
  const ErrorButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(context.cocoaBean),
      ),
      onPressed: null,
      child: Padding(
        padding: context.smallTextPad,
        child: Row(
          children: [
            LargeTitleTexTBodoni(
              text: ProjectKeys.error,
              color: context.pampas,
              letterSpacing: 2,
            ),
            Icon(Icons.error_outline_outlined, color: context.pampas),
          ],
        ),
      ),
    );
  }
}
