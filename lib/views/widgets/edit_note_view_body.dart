import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/views/widgets/custom_app_bar_widget.dart';
import 'package:tharwat_notes_app/views/widgets/edit_notes_text_feilds_widget.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});
   static TextEditingController titleController = TextEditingController();
  static TextEditingController contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
        child: Column(
          children: [
            CustomAppBar(
              title: "Edit Note",
              icon: Icons.done_rounded,
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            const EditNotesTextFeilds()
          ],
        ),
      ),
    );
  }
}
