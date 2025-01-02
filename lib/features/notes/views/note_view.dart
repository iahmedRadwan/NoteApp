import 'package:flutter/material.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static const String routeName = "home_view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: NoteViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff62FCD7),
        shape: StadiumBorder(),
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
