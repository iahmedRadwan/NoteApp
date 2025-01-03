import 'package:flutter/material.dart';
import 'package:note_app/features/notes/models/note_model.dart';
import 'package:note_app/features/notes/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomTextField(
            hintText: "Title",
            initalValue: widget.noteModel.noteTitle,
            onChange: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 14,
          ),
          CustomTextField(
            hintText: "Content",
            initalValue: widget.noteModel.noteSubtitle,
            maxLine: 5,
            onChange: (value) {
              content = value;
            },
          )
        ],
      ),
    );
  }
}
