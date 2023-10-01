import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/views/widgets/custom_button_widget.dart';
import 'package:tharwat_notes_app/views/widgets/custom_text_feild_widget.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            CustomTextFeild(
              labelText: "Title",
              onSaved: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFeild(
              labelText: "Content",
              onSaved: (value) {
                subTitle = value;
              },
              maxLines: 5,
            ),
            const SizedBox(
              height: 80,
            ),
            CustomButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  autovalidateMode = AutovalidateMode.disabled;
                  formKey.currentState!.save();
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
