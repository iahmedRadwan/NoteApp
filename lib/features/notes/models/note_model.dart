class NoteModel {
  final String noteTitle;
  final String noteSubtitle;
  final String noteDate;
  final int index;

  NoteModel(
      {required this.noteTitle,
      required this.index,
      required this.noteSubtitle,
      required this.noteDate});
}
