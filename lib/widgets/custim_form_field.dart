import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
     required this.text,
      required this.maxLines,
       this.onSaved,
       
   
 
  
    
  });
final void Function(String?)? onSaved;
final String text;
final int maxLines;
// final bool autofocus;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator:(value) {
        if(value?.isEmpty  ?? true )
        {
          return 'there is an error';
        }else
        {
          return null;
        }
      } ,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText:text ,
        
        border: customBorder(),
        enabledBorder: customBorder(),
        focusedBorder: customBorder(color: Colors.blueAccent),
      ),
    );
    
  }

  OutlineInputBorder customBorder({color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color:color ?? Colors.white)
      );
  }
}