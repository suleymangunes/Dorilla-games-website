import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/product/enum/flare/flare_enum.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class AnimationBackground extends StatelessWidget {
  const AnimationBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.heigth,
      width: context.width,
      child: FlareActor(
        FlareEnum.background.rawValue,
        alignment: Alignment.center,
        fit: BoxFit.cover,
        animation: FlareKeys.midnight.name,
      ),
    );
  }
}
