import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon});
final String text;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Text(
              text,
              style: TextStyle(
                fontSize: 18,
                
              ),),
        SearchAppBar(icon: icon,),
          ],
        ),
      ),
    );
  }
}