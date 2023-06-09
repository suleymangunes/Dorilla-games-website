import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/product/widget/card/about_url_card.dart';
import 'package:flutter/material.dart';

class ClickableUrlCard extends StatelessWidget {
  const ClickableUrlCard({super.key, required this.picture, required this.platform, required this.function});
  final String picture;
  final String platform;
  final void Function() function;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: SizedBox(
        width: context.urlCardWidth,
        child: AboutUrlCard(platform: platform, picture: picture),
      ),
    );
  }
}
