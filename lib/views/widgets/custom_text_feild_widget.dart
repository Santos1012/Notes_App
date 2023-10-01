import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/constants.dart';

class CustomTextFeild extends StatelessWidget {
  final String labelText;
  final int maxLines;
  final void Function(String? value)? onSaved;

  const CustomTextFeild(
      {super.key,
      required this.labelText,
       this.maxLines=1,
      this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is Required";
        } else {
          return null;
        }
      },
      keyboardType: keyboardTypeFunction(),
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        enabledBorder: customBorder(borderColor: Colors.white),
        focusedBorder: customBorder(borderColor: kPrimaryColor),
        errorBorder: customBorder(borderColor: Colors.red),
        focusedErrorBorder: customBorder(borderColor: Colors.red),
        labelText: labelText,
        labelStyle: const TextStyle(
          color: kPrimaryColor,
        ),
      ),
    );
  }

  TextInputType keyboardTypeFunction() {
    return labelText == "Title" ? TextInputType.text : TextInputType.multiline;
  }

  OutlineInputBorder customBorder({required Color borderColor}) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide(
        color: borderColor,
      ),
    );
  }
}
