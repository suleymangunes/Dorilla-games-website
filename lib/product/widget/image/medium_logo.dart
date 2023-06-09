import 'package:dorilla_games/core/components/image/medium_image.dart';
import 'package:dorilla_games/product/enum/image/image_enum.dart';
import 'package:flutter/material.dart';

class MediumLogo extends StatelessWidget {
  const MediumLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return MediumImage(image: ImageEnum.logo.rawValue);
  }
}
