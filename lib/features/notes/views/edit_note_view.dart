import 'package:flutter/material.dart';
import 'package:note_app/features/notes/views/widgets/custom_app_bar.dart';

import 'widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static const String routeName = "edit_note_view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: 'Edit Note',
        icon: Icons.done,
      ),
      body: EditNoteViewBody(),
    );
  }
}
