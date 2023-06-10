import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:dorilla_games/product/enum/image/image_enum.dart';
import 'package:flutter/material.dart';

class DesktopBigLogo extends StatelessWidget {
  const DesktopBigLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.desktopLogoHeight,
      child: Padding(
        padding: context.desktopLogoPad,
        child: Image.asset(ImageEnum.logo.rawValue),
      ),
    );
  }
}
