import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/features/notes/view_models/get_note_cubit/get_notes_cubit.dart';

import 'notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetNotesCubit>(
      create: (context) => GetNotesCubit()..getNotes(),
      child: CustomNotesListView(),
    );
  }
}
