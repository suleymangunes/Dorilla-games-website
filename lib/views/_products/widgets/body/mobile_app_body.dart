import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/page_cubit.dart';
import 'package:dorilla_games/views/responsive-web/view-model/select_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobileAppBody extends StatelessWidget {
  const MobileAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    final appCubit = context.watch<PageCubit>();
    return Padding(
      padding: context.topPadMobile,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: context.heigthEighty,
            width: context.widthToBeUsed,
            child: SelectMobilePages.getPages(appCubit.state),
          ),
        ],
      ),
    );
  }
}
