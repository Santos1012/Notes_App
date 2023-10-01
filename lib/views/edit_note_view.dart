import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/views/widgets/edit_note_view_body_widget.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
