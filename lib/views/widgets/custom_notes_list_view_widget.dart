import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwat_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:tharwat_notes_app/models/note_model.dart';
import 'package:tharwat_notes_app/views/widgets/custom_note_tile_item_widget.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notesList ?? [];
        return ListView.separated(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return const NoteTileItem();
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 6,
            );
          },
        );
      },
    );
  }
}
