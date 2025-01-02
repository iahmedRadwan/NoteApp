import 'package:flutter/material.dart';

import '../../features/notes/views/note_view.dart';

abstract class AppRouter {
  static final Map<String, WidgetBuilder> appRouter = {
    NoteView.routeName: (context) => const NoteView()
  };
}
