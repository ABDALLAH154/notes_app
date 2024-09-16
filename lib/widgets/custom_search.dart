import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key, required this.icon});
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,

      height: 50,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(8),
        // color: Colors.white
        color: Colors.white.withOpacity(.05),
      ),
      child: IconButton(onPressed: () {
        
      }, icon: Icon(icon),),
    );
  }
}