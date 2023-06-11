import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/validator/email_validator.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:flutter/material.dart';

class TextfieldForEmail extends StatelessWidget {
  const TextfieldForEmail({super.key, required this.nameController});
  final TextEditingController nameController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.emailArea,
      child: TextFormField(
        controller: nameController,
        cursorColor: context.cocoaBean,
        decoration: InputDecoration(
          hintText: ProjectKeys.email,
          hintStyle: context.hintStyleCustom,
          border: const OutlineInputBorder(),
          filled: true,
          fillColor: context.pampas,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: context.cocoaBean),
          ),
        ),
        validator: (value) => (value != null && value.isValidEmail()) ? null : ProjectKeys.fillFields,
      ),
    );
  }
}
