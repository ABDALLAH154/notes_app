import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custim_form_field.dart';
import 'package:notes_app/widgets/custom_button.dart';

class ShowModalSheet extends StatelessWidget {
  const ShowModalSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
      child: Column(
        children: [
         CustomFormField(
          text: 'label',
           maxLines: 1,
          ),
          SizedBox(
            height: 20,
          ),

          CustomFormField(
            text: 'content',
             maxLines:7,
          ),
          Spacer(
            flex: 1,
          ),
          CustomButton(onPressed: () {
            
          },)
        ],
      ),
    );
  }
}