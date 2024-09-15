import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Text(
              'Notes',
              style: TextStyle(
                fontSize: 18,
                
              ),),
        SearchAppBar(),
          ],
        ),
      ),
    );
  }
}