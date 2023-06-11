import 'package:dorilla_games/core/components/text/bodoni/medium_title_text_cocabean_bodoni.dart';
import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:dorilla_games/core/service/email/email_launcher.dart';
import 'package:dorilla_games/product/enum/svg/svg_enum.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DesktopGmailCard extends StatelessWidget {
  const DesktopGmailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        EmailLauncher().launchEmail();
      },
      child: Card(
        color: context.pampas,
        child: Padding(
          padding: context.smallTextPad,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: context.svgSmallHeight,
                width: context.svgSmallWidth,
                child: SvgPicture.asset(SvgEnum.gmail.getSvg),
              ),
              Padding(
                padding: context.urlSvgLeftPad,
                child: const MediumTitleTextCocoaBeanBodoni(text: ProjectKeys.gmail),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
