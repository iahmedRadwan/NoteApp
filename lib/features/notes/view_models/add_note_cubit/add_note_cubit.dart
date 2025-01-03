import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/features/notes/models/note_model.dart';
import 'package:note_app/shared/constants/app_constant.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  static AddNoteCubit get(context) => BlocProvider.of(context);

  addNote(NoteModel note) async {
    emit(AddNoteLoadingState());
    try {
      var noteBox = Hive.box<NoteModel>(AppConstantsHelper.kNotesBox);
      await noteBox.add(note);
      emit(AddNoteSuccessState());
    } catch (e) {
      // TODO
      emit(AddNoteErrorState(errorMsg: e.toString()));
    }
  }
}
