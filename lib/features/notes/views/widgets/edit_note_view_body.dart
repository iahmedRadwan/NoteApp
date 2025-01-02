import 'package:flutter/material.dart';
import 'package:note_app/features/notes/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomTextField(hintText: "Title"),
          SizedBox(
            height: 14,
          ),
          CustomTextField(
            hintText: "Content",
            maxLine: 5,
          )
        ],
      ),
    );
  }
}
