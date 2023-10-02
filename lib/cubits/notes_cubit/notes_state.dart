part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

final class NotesInitialState extends NotesState {}

final class NotesLoadingState extends NotesState {}

final class NotesSuccessState extends NotesState {
  final List<NoteModel> notes;

  NotesSuccessState({required this.notes});
}

final class NotesFailireState extends NotesState {
  final String errMsg;

  NotesFailireState({required this.errMsg});
}
