import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/views/widgets/add_note_bottom_sheet_body.dart';
import 'package:tharwat_notes_app/views/widgets/notes_view_body_widget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            constraints: BoxConstraints.expand(),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            context: context,
            builder: (context) => const AddNoteBottomSheet(),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
