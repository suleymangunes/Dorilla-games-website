import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:dorilla_games/views/desktop/about/about_and_contactme_area.dart';
import 'package:dorilla_games/views/desktop/about/contact/view-model/email_sender_cubit.dart';
import 'package:dorilla_games/views/desktop/about/contact_area.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/select-service/select_service_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => IsSelectedGame()),
        BlocProvider(create: (context) => IsSelectedApp()),
        BlocProvider(create: (context) => IsSelectedWeb()),
      ],
      child: Padding(
        padding: context.topPadMobile,
        child: SizedBox(
          width: context.widthToBeUsed,
          child: Row(
            children: [
              const Spacer(flex: 1),
              const AboutAndContactMeArea(),
              const Spacer(flex: 3),
              BlocProvider(create: (context) => EmailSenderCubit(), child: const ContactArea()),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
