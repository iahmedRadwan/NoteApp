part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteLoadingState extends AddNoteState {}

final class AddNoteErrorState extends AddNoteState {
  final String errorMsg;

  AddNoteErrorState({required this.errorMsg});
}

final class AddNoteSuccessState extends AddNoteState {}
