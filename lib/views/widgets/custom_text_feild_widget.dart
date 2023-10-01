import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/constants.dart';

class CustomTextFeild extends StatelessWidget {
  final String labelText;
  final int maxLines;

  const CustomTextFeild(
      {super.key, required this.labelText, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardTypeFunction(),
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        enabledBorder: customBorder(borderColor: Colors.white),
        focusedBorder: customBorder(borderColor: kPrimaryColor),
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
