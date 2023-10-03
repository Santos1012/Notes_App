import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/views/widgets/custom_text_feild_widget.dart';
import 'package:tharwat_notes_app/views/widgets/edit_note_view_body.dart';

class EditNotesTextFeilds extends StatelessWidget {
  const EditNotesTextFeilds({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomTextFeild(
          labelText: "Title",
          controller: EditNoteViewBody.titleController,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextFeild(
          labelText: "Content",
          maxLines: 5,
          controller: EditNoteViewBody.subTitletController,
        ),
      ],
    );
  }
}
