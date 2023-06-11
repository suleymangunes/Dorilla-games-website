import 'package:dorilla_games/core/components/card/small_text_all_card.dart';
import 'package:dorilla_games/core/extension/border/border_extension.dart';
import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/product/enum/svg/svg_enum.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/select-service/select_service_cubit.dart';
import 'package:dorilla_games/views/desktop/view-model/service/service_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/svg/small_svg.dart';

class SelectableSvgWeb extends StatelessWidget {
  const SelectableSvgWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IsSelectedWeb, bool>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            context.read<IsSelectedWeb>().select();
          },
          child: Column(
            children: [
              Card(
                color: ServiceSelector.selectColor(state, context.pampas),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: context.circularFifty,
                ),
                child: SmallSvg(svg: SvgEnum.web.getSvg),
              ),
              const SmallTextAllCard(text: ProjectKeys.web),
            ],
          ),
        );
      },
    );
  }
}
