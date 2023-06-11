import 'package:dorilla_games/core/components/svg/clickable_svg_thirty.dart';
import 'package:dorilla_games/product/enum/svg/svg_enum.dart';
import 'package:dorilla_games/product/enum/url/url_enum.dart';
import 'package:flutter/material.dart';

class ClickablePlaystoreSvg extends StatelessWidget {
  const ClickablePlaystoreSvg({super.key});

  @override
  Widget build(BuildContext context) {
    return ClickableSvgThirty(
      svg: SvgEnum.play.getSvg,
      url: UrlEnum.website.getUrl,
    );
  }
}
