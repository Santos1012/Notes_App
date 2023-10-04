import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/views/widgets/custom_text_feild_widget.dart';

class EditNotesTextFeilds extends StatelessWidget {
  final TextEditingController titleController;
  final TextEditingController subTitletController;

  const EditNotesTextFeilds(
      {super.key,
      required this.titleController,
      required this.subTitletController});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomTextFeild(
          labelText: "Title",
          controller: titleController,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextFeild(
          labelText: "Content",
          maxLines: 5,
          controller: subTitletController,
        ),
      ],
    );
  }
}
