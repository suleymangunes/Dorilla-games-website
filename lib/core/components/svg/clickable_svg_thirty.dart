import 'package:dorilla_games/core/components/svg/small_svg_thirty.dart';
import 'package:dorilla_games/core/service/url/url_launcher_singleton.dart';
import 'package:flutter/material.dart';

class ClickableSvgThirty extends StatelessWidget {
  const ClickableSvgThirty({super.key, required this.svg, required this.url});
  final String svg;
  final String url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        UrlLauncherSingleton.launch(url);
      },
      child: SmallSvgThirty(svg: svg),
    );
  }
}
