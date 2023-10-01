import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/constants.dart';
import 'package:tharwat_notes_app/views/widgets/custom_text_feild_widget.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
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
          Spacer(),
          CustomButton()
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: kPrimaryColor,
          fixedSize: Size(
            MediaQuery.of(context).size.width,
            45,
          )),
      child: const Text(
        "Add",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
