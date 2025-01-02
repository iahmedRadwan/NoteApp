import 'package:flutter/material.dart';
import 'package:note_app/features/notes/views/edit_note_view.dart';

import '../../features/notes/views/note_view.dart';

abstract class AppRouter {
  static final Map<String, WidgetBuilder> appRouter = {
    NoteView.routeName: (context) => const NoteView(),
    EditNoteView.routeName: (context) => const EditNoteView()
  };
}
