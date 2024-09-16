import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/edit_note_body.dart';
import 'package:notes_app/widgets/show_modal_sheet.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:Column(
        children: [
        CustomAppBar(text: 'Notes Item', icon:  Icons.check),
        EditNoteBody()
      ],),
    );
  }
}