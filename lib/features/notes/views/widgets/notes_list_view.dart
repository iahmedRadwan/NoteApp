import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/features/notes/view_models/get_note_cubit/get_notes_cubit.dart';

import 'note_item.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: BlocBuilder<GetNotesCubit, GetNotesState>(
        builder: (context, state) {
          if (state is GetNotesSuccessState) {
            return ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: state.notes.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 2),
                    child: NoteItemListTile(
                      noteModel: state.notes[index],
                      index: index,
                    ),
                  );
                });
          }
          return Center(
            child: Text("No Items Added Yet"),
          );
        },
      ),
    );
  }
}
