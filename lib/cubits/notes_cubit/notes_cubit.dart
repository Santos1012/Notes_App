import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwat_notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubitCubit extends Cubit<NotesState> {
  NotesCubitCubit() : super(NotesInitialState());
}
