import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:flutter/material.dart';

class SmallImage extends StatelessWidget {
  const SmallImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.smallImageHeigt,
      child: Image.asset(image),
    );
  }
}
