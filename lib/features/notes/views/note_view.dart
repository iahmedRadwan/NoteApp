import 'package:flutter/material.dart';

import '../widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static const String routeName = "home_view";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NoteViewBody(),
    );
  }
}
