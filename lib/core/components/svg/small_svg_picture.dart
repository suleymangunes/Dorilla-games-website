import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmallSvgPicture extends StatelessWidget {
  const SmallSvgPicture({super.key, required this.picture});
  final String picture;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.smallSvgHeight,
      width: context.smallSvgWidth,
      child: SvgPicture.asset(picture),
    );
  }
}

extension MobileSizes on BuildContext {
  double get smallSvgHeight => 25;
  double get smallSvgWidth => 30;
}
