import 'package:dorilla_games/core/components/image/small_image.dart';
import 'package:flutter/material.dart';

class ClickableImage extends StatelessWidget {
  const ClickableImage({super.key, required this.image, required this.function});
  final String image;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function();
      },
      child: SmallImage(image: image),
    );
  }
}
