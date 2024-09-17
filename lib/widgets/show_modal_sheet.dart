import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custim_form_field.dart';
import 'package:notes_app/widgets/custom_button.dart';

class ShowModalSheet extends StatelessWidget {
  const ShowModalSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AddNoteForm();
  }
}





class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

String? title, subTitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
        child: Column(
          children: [
           CustomFormField(
            onSaved: (p0) {
              title = p0;
            },
            text: 'label',
             maxLines: 1,
            ),
            SizedBox(
              height: 20,
            ),
      
            CustomFormField(
              onSaved: (p0) {
                subTitle = p0;
              },
              text: 'content',
               maxLines:7,
            ),
            Spacer(
              flex: 1,
            ),
            CustomButton(
              onPressed: () {
                if(formKey.currentState!.validate() )
                {
formKey.currentState!.save();
                }else 
                {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
             )
          ],
        ),
      ),
    );
  }
}