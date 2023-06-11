import 'package:dorilla_games/views/_products/enum/service_status_enum.dart';
import 'package:dorilla_games/views/_products/widgets/button/contact/error_button.dart';
import 'package:dorilla_games/views/_products/widgets/button/contact/loadin_button.dart';
import 'package:dorilla_games/views/_products/widgets/button/contact/send_button.dart';
import 'package:dorilla_games/views/_products/widgets/button/contact/sent_button.dart';
import 'package:dorilla_games/views/desktop/about/contact/view-model/email_sender_cubit.dart';
import 'package:dorilla_games/views/desktop/about/contact/view-model/email_sender_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dorilla_games/core/components/card/card_title_large_text.dart';
import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:dorilla_games/product/widget/svg/selectable_svg_app.dart';
import 'package:dorilla_games/product/widget/svg/selectable_svg_game.dart';
import 'package:dorilla_games/product/widget/svg/selectable_svg_web.dart';
import 'package:dorilla_games/views/_products/widgets/textfield/text_field_for_mail.dart';
import 'package:dorilla_games/views/_products/widgets/textfield/textfield_for_name.dart';
import 'package:dorilla_games/views/_products/widgets/textfield/textfield_for_tell_me_about.dart';

class ContactArea extends StatefulWidget {
  const ContactArea({
    super.key,
  });

  @override
  State<ContactArea> createState() => _ContactAreaState();
}

class _ContactAreaState extends State<ContactArea> {
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _aboutController;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _aboutController = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _aboutController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SizedBox(
        width: context.widthFourty,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CardTitleLargeText(text: ProjectKeys.contactMe),
            Padding(
              padding: context.smallTopPad,
              child: Row(
                children: [
                  TextfieldForName(nameController: _nameController),
                  context.smallArea,
                  TextfieldForEmail(nameController: _emailController),
                ],
              ),
            ),
            context.smallSizedbox,
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SelectableSvgWeb(),
                SelectableSvgApp(),
                SelectableSvgGame(),
              ],
            ),
            context.smallSizedbox,
            TextfieldForTellMeAbout(aboutController: _aboutController),
            context.smallSizedbox,
            Align(
              alignment: Alignment.centerRight,
              child: BlocBuilder<EmailSenderCubit, IEmailSenderState>(
                builder: (context, state) {
                  switch (state.status) {
                    case SenderStatus.initial:
                      return SendButton(
                          formKey: _formKey,
                          nameController: _nameController,
                          emailController: _emailController,
                          aboutController: _aboutController);
                    case SenderStatus.loading:
                      return const LoadingButton();
                    case SenderStatus.completed:
                      return const SentButton();
                    case SenderStatus.error:
                      return const ErrorButton();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
