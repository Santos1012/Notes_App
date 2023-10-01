import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/views/widgets/custom_button_widget.dart';
import 'package:tharwat_notes_app/views/widgets/custom_text_feild_widget.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
      child: SingleChildScrollView(
        child: Column(
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
             SizedBox(
              height: 80,
            ),
            CustomButton()
          ],
        ),
      ),
    );
  }
}
