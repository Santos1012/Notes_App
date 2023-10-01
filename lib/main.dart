import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tharwat_notes_app/constants.dart';
import 'package:tharwat_notes_app/models/note_model.dart';
import 'package:tharwat_notes_app/views/notes_view.dart';

void main() async{
  await Hive.initFlutter();
  var notesListBox = await Hive.openBox<List<NoteModel>>(kNotesListBox);


  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily: "Poppins"),
      home: const NotesView(),
    );
  }
}