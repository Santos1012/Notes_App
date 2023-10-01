import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tharwat_notes_app/views/notes_view.dart';

import 'constants.dart';

void main() async{
  await Hive.initFlutter();
  var notesBox = await Hive.openBox(kNotesListBox);


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