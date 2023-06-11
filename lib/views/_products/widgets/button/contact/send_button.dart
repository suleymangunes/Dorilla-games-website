import 'package:dorilla_games/core/components/text/bodoni/large_title_text_bodoni.dart';
import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:dorilla_games/views/desktop/about/contact/view-model/email_sender_cubit.dart';
import 'package:dorilla_games/views/desktop/model/contact_model.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/select-service/select_service_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SendButton extends StatelessWidget {
  const SendButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController aboutController,
  })  : _formKey = formKey,
        _nameController = nameController,
        _emailController = emailController,
        _aboutController = aboutController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _nameController;
  final TextEditingController _emailController;
  final TextEditingController _aboutController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(context.cocoaBean),
      ),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          final contactModel = ContactModel(
            name: _nameController.text,
            email: _emailController.text,
            about: _aboutController.text,
            web: context.read<IsSelectedWeb>().state,
            app: context.read<IsSelectedApp>().state,
            game: context.read<IsSelectedGame>().state,
          );
          context.read<EmailSenderCubit>().sendEmail(contactModel);
        }
      },
      child: Padding(
        padding: context.smallTextPad,
        child: LargeTitleTexTBodoni(
          text: ProjectKeys.send,
          color: context.pampas,
          letterSpacing: 2,
        ),
      ),
    );
  }
}
