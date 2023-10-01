import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/views/widgets/custom_app_bar_widget.dart';
import 'package:tharwat_notes_app/views/widgets/custom_notes_list_view_widget.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
        child: Column(
          children: [
            CustomAppBar(title: "Notes",icon: Icons.search,),
            SizedBox(height: 20,),
            Expanded(child: CustomNotesListView()),
          ],
        ),
      ),
    );
  }
}
