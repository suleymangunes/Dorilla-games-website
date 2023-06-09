import 'package:flutter/material.dart';

class LargeTitleText extends StatelessWidget {
  const LargeTitleText({super.key, required this.text, this.fontFamily, this.letterSpacing, this.color});
  final String text;
  final String? fontFamily;
  final double? letterSpacing;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: color,
            fontFamily: fontFamily,
            letterSpacing: letterSpacing,
          ),
    );
  }
}
