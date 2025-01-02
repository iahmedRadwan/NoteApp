import 'package:flutter/material.dart';
import 'package:note_app/features/notes/models/note_model.dart';

import 'note_item_list_tile.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: NoteItemListTile(
              noteModel: NoteModel(
                  noteTitle: "Flutter Tips",
                  noteSubtitle: "Build Your Career With Tharwat Samy",
                  noteDate: "May 21,2022",
                  index: index),
            ),
          );
        });
  }
}
