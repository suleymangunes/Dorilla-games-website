import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmallSvgThirty extends StatelessWidget {
  const SmallSvgThirty({super.key, required this.svg});
  final String svg;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.svgThirty,
      width: context.svgThirty,
      child: SvgPicture.asset(svg),
    );
  }
}
