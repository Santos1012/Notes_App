import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/views/widgets/custom_search_icon_widget.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;

  const CustomAppBar({super.key, required this.title, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        CustomIconButton(
          icon: icon,
        ),
      ],
    );
  }
}
