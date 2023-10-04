import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tharwat_notes_app/constants.dart';
import 'package:tharwat_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:tharwat_notes_app/helpers/on_dismissed_function.dart';
import 'package:tharwat_notes_app/models/note_model.dart';
import 'package:tharwat_notes_app/views/widgets/dismissible_background_widget.dart';
import 'package:tharwat_notes_app/views/widgets/empty_list_body.dart';
import 'package:tharwat_notes_app/views/widgets/not_empty_list_body.dart';
import 'package:tharwat_notes_app/views/widgets/note_widgets.dart';

class NotesListViewWidgets extends StatelessWidget {
  const NotesListViewWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notesList ?? [];
        return notes.isEmpty
            ? const EmptyListBody()
            : NotEmptyListBody(notes: notes);
      },
    );
  }

}
