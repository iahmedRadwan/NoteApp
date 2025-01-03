part of 'get_notes_cubit.dart';

@immutable
sealed class GetNotesState {}

final class GetNotesInitial extends GetNotesState {}

final class GetNotesLoadingState extends GetNotesState {}

final class GetNotesSuccessState extends GetNotesState {
  final List<NoteModel> notes;

  GetNotesSuccessState({required this.notes});
}

final class GetNotesErrorState extends GetNotesState {
  final String errorMsg;

  GetNotesErrorState({required this.errorMsg});
}
