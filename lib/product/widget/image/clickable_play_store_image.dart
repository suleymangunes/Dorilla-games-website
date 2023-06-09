import 'package:dorilla_games/core/components/image/clickable_image.dart';
import 'package:dorilla_games/core/service/url/url_launcher_singleton.dart';
import 'package:dorilla_games/product/enum/image/image_enum.dart';
import 'package:flutter/material.dart';

class ClickablePlayStoreImage extends StatelessWidget {
  const ClickablePlayStoreImage({super.key, required this.goUrl});
  final String goUrl;

  @override
  Widget build(BuildContext context) {
    return ClickableImage(
      image: ImageEnum.store.rawValue,
      function: () {
        UrlLauncherSingleton.launch(goUrl);
      },
    );
  }
}
