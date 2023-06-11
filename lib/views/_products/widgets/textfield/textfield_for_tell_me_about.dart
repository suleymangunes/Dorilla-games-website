import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:flutter/material.dart';

class TextfieldForTellMeAbout extends StatelessWidget {
  const TextfieldForTellMeAbout({super.key, required this.aboutController});
  final TextEditingController aboutController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.widthFourty,
      child: TextFormField(
        controller: aboutController,
        minLines: context.maxlineTellme,
        maxLines: context.maxlineTellme,
        cursorColor: context.cocoaBean,
        decoration: InputDecoration(
          hintText: ProjectKeys.tellMe,
          hintStyle: context.hintStyleCustom,
          border: const OutlineInputBorder(),
          filled: true,
          fillColor: context.pampas,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: context.cocoaBean),
          ),
        ),
        validator: (value) {
          if (value != null && value.isEmpty) {
            return ProjectKeys.fillFields;
          }
          return null;
        },
      ),
    );
  }
}
