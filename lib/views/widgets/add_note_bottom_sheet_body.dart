import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/views/widgets/add_note_form_widgets.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: AddNoteForm(),
    );
  }
}
