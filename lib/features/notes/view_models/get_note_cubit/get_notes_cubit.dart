import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/features/notes/models/note_model.dart';
import 'package:note_app/shared/constants/app_constant.dart';

part 'get_notes_state.dart';

class GetNotesCubit extends Cubit<GetNotesState> {
  GetNotesCubit() : super(GetNotesInitial());

  getNotes() {
    emit(GetNotesLoadingState());
    try {
      var notesBox = Hive.box<NoteModel>(AppConstantsHelper.kNotesBox);
      emit(GetNotesSuccessState(notes: notesBox.values.toList()));
    } catch (e) {
      // TODO
      emit(GetNotesErrorState(errorMsg: e.toString()));
    }
  }
}
