import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmallSvg extends StatelessWidget {
  const SmallSvg({super.key, required this.svg});
  final String svg;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.svgSize,
      width: context.svgSize,
      child: Padding(
        padding: context.svgPad,
        child: SvgPicture.asset(svg),
      ),
    );
  }
}
