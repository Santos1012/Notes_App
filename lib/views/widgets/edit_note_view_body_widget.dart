import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/views/widgets/custom_app_bar_widget.dart';
import 'package:tharwat_notes_app/views/widgets/custom_text_feild_widget.dart';
import 'package:tharwat_notes_app/views/widgets/edit_notes_text_feilds_widget.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
        child: Column(
          children: [
            CustomAppBar(
              title: "Edit Note",
              icon: Icons.done_rounded,
            ),
            SizedBox(
              height: 20,
            ),
            EditNotesTextFeilds()
          ],
        ),
      ),
    );

   
  }
}
