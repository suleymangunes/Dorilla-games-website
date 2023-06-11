import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/page_cubit.dart';
import 'package:dorilla_games/views/desktop/view-model/get-body/get_body.dart';
import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({
    super.key,
    required this.appCubit,
  });

  final PageCubit appCubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.topPadDesktope,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: context.carouselSliderHeight,
            width: context.widthToBeUsed,
            child: GetBody.get(bodyPageId: appCubit.state),
          ),
        ],
      ),
    );
  }
}
