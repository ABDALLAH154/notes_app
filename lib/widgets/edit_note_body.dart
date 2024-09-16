import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custim_form_field.dart';
import 'package:notes_app/widgets/show_modal_sheet.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: 
        [
          CustomFormField(text: 'label', maxLines: 1),
          SizedBox(height: 16,),
          CustomFormField(text: 'content', maxLines: 7),
        ],
      ),
    );
  }
}