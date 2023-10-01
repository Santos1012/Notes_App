import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/constants.dart';

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
