import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/views/widgets/custom_text_feild_widget.dart';

class NotesTextFeilds extends StatelessWidget {
  final TextEditingController titleController;
  final TextEditingController subTitletController;

  const NotesTextFeilds(
      {super.key,
      required this.titleController,
      required this.subTitletController});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomTextFeild(
          labelText: "Note Title",
          controller: titleController,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextFeild(
          labelText: "Note Content",
          maxLines: 5,
          controller: subTitletController,
        ),
      ],
    );
  }
}
