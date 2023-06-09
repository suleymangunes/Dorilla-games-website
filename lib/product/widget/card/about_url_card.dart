import 'package:dorilla_games/core/components/svg/small_svg_picture.dart';
import 'package:dorilla_games/core/components/text/bodoni/small_title_text_cocoabean_bodoni.dart';
import 'package:dorilla_games/core/extension/color/color_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:flutter/material.dart';

class AboutUrlCard extends StatelessWidget {
  const AboutUrlCard({super.key, required this.platform, required this.picture});
  final String platform;
  final String picture;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.pampas,
      child: Padding(
        padding: context.smallTextPad,
        child: Row(
          children: [
            SmallSvgPicture(picture: picture),
            Padding(
              padding: context.urlSvgLeftPad,
              child: SmallTitleTextCocoaBeanBodoni(text: platform),
            ),
          ],
        ),
      ),
    );
  }
}
