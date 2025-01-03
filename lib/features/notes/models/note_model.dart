import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel {
  @HiveField(0)
  final String noteTitle;
  @HiveField(1)
  final String noteSubtitle;
  @HiveField(2)
  final String noteDate;
  @HiveField(3)
  final int index;

  NoteModel(
      {required this.noteTitle,
      required this.index,
      required this.noteSubtitle,
      required this.noteDate});
}
