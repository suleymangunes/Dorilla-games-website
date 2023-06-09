import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:flutter/material.dart';

class MediumImage extends StatelessWidget {
  const MediumImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.mediumImageHeigt,
      child: Image.asset(image),
    );
  }
}
