import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/views/widgets/custom_note_tile_item_widget.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const NoteTileItem();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 6,
        );
      },
    );
  }
}
