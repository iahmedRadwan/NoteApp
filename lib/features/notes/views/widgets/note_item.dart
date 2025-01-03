import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:note_app/features/notes/models/note_model.dart';
import 'package:note_app/features/notes/views/edit_note_view.dart';

class NoteItemListTile extends StatelessWidget {
  const NoteItemListTile({
    super.key,
    required this.noteModel,
    required this.index,
  });
  final List<Color> kColors = const [
    Color(0xffAC3931),
    Color(0xffE5D352),
    Color(0xffD9E76C),
    Color(0xff537D8D),
    Color(0xff482C3D),
  ];
  final NoteModel noteModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.routeName);
      },
      child: Card(
        color: kColors[index % kColors.length],
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    noteModel.noteTitle,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ),
                subtitle: Text(
                  noteModel.noteSubtitle,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black45,
                  ),
                ),
                trailing: Icon(
                  IconlyBroken.delete,
                  size: 32,
                  color: Colors.black,
                ),
              ),
              Text(
                noteModel.noteDate,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black45,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
