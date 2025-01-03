import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String noteTitle;
  @HiveField(1)
  String noteSubtitle;
  @HiveField(2)
  final String noteDate;

  NoteModel(
      {required this.noteTitle,
      required this.noteSubtitle,
      required this.noteDate});
}
