import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tharwat_notes_app/models/note_model.dart';
import 'package:tharwat_notes_app/simple_bloc_observer.dart';
import 'package:tharwat_notes_app/views/notes_home_view.dart';

import 'constants.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  //registerAdapter must be write befote openBox
  Hive.registerAdapter(NoteModelAdapter());
  var x = await Hive.openBox<NoteModel>(kNotesBox);
  log("${x.length}");

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      home: const NotesHomeView(),
    );
  }
}
