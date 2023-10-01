import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/views/widgets/custom_text_feild_widget.dart';

class EditNotesTextFeilds extends StatelessWidget {
  const EditNotesTextFeilds({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomTextFeild(
          labelText: "Title",
        ),
        SizedBox(
          height: 20,
        ),
        CustomTextFeild(
          labelText: "Content",
          maxLines: 5,
        ),
      ],
    );
  }
}