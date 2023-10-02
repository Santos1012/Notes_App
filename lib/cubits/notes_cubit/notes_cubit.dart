import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tharwat_notes_app/constants.dart';
import 'package:tharwat_notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitialState());
  void fetchAllNotes() {
    emit(NotesLoadingState());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      //notesBox.values.toList() returne to me List<NoteModel> variable
      emit(NotesSuccessState(notes: notesBox.values.toList()));
    } on HiveError catch (e) {
      emit(NotesFailireState(errMsg: e.toString()));
    } catch (e) {
      emit(NotesFailireState(errMsg: e.toString()));
    }
  }
}
