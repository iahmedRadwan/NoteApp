import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/custom_buttom_sheet.dart';
import 'widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static const String routeName = "note_view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: 'Notes',
        icon: IconlyBroken.search,
      ),
      body: NoteViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return BottomSheetWidget();
              });
        },
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
