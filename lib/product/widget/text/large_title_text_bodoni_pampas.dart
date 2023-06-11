import 'package:dorilla_games/core/components/text/bodoni/large_title_text_bodoni.dart';
import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:flutter/material.dart';

class LargeTitleTextPampasBodoni extends StatelessWidget {
  const LargeTitleTextPampasBodoni({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return LargeTitleTexTBodoni(
      text: text,
      color: context.pampas,
      letterSpacing: 2,
    );
  }
}
