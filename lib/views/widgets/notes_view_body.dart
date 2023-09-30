import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/views/widgets/custom_app_bar.dart';
import 'package:tharwat_notes_app/views/widgets/custom_note_tile_item_widget.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
      child: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            NoteTileItem(),
          ],
        ),
      ),
    );
  }
}
