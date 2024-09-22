import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants/constant.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/home_view.dart';

void main()async {
  await Hive.initFlutter();
  await Hive.openBox(kBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(
        
      ),
      // theme: ThemeData.dark(

      // ),
      home:const HomeView() ,
    );
  }
}