import 'package:dorilla_games/core/service/url/url_launcher_singleton.dart';
import 'package:dorilla_games/product/enum/image/image_enum.dart';
import 'package:dorilla_games/views/desktop/games/cubit/make_button_bigger.dart';
import 'package:dorilla_games/views/desktop/games/viewmodel/getsize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DynamicClickablePlayStore extends StatelessWidget {
  const DynamicClickablePlayStore({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MakeButtonBigger, bool>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            UrlLauncherSingleton.launch(url);
          },
          onHover: (value) {
            context.read<MakeButtonBigger>().changeSize(value);
          },
          child: SizedBox(
            width: GetSize.getSize(state),
            child: Image.asset(ImageEnum.store.rawValue),
          ),
        );
      },
    );
  }
}
