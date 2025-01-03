import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/features/core/view/components/custom_toast.dart';
import 'package:note_app/features/notes/models/note_model.dart';
import 'package:note_app/features/notes/view_models/get_note_cubit/get_notes_cubit.dart';
import 'package:note_app/features/notes/views/widgets/custom_app_bar.dart';

import 'widgets/custom_text_field.dart';
import 'widgets/edit_note_view_body.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key});
  static const String routeName = "edit_note_view";

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  @override
  Widget build(BuildContext context) {
    final modelArgs = ModalRoute.of(context)!.settings.arguments as NoteModel;
    String? title, content;
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: 'Edit Note',
        icon: Icons.done,
        onPressed: () {
          modelArgs.noteTitle = title ?? modelArgs.noteTitle;
          modelArgs.noteSubtitle = content ?? modelArgs.noteSubtitle;
          modelArgs.save();
          BlocProvider.of<GetNotesCubit>(context).getNotes();
          ToastManager.customToastSuccess(
              context: context,
              title: "Note Updated Succesfully",
              color: Colors.black);
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextField(
              hintText: "Title",
              initalValue: modelArgs.noteTitle,
              onChange: (value) {
                title = value;
              },
            ),
            SizedBox(
              height: 14,
            ),
            CustomTextField(
              hintText: "Content",
              initalValue: modelArgs.noteSubtitle,
              maxLine: 5,
              onChange: (value) {
                content = value;
              },
            )
          ],
        ),
      ),
    );
  }
}
