import 'package:flutter/material.dart';
import 'package:note_app/features/notes/models/note_model.dart';

import 'note_item.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
              child: NoteItemListTile(
                noteModel: NoteModel(
                    noteTitle: "Flutter Tips",
                    noteSubtitle: "Build Your Career With Tharwat Samy",
                    noteDate: "May 21,2022",
                    index: index),
              ),
            );
          }),
    );
  }
}
