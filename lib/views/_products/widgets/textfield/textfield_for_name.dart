import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:flutter/material.dart';

class TextfieldForName extends StatelessWidget {
  const TextfieldForName({super.key, required this.nameController});
  final TextEditingController nameController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.nameArea,
      child: TextFormField(
        controller: nameController,
        cursorColor: context.cocoaBean,
        decoration: InputDecoration(
          hintText: ProjectKeys.name,
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
