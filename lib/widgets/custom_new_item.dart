import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:320,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.amber[600]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
            'Flutter Tips',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black
              
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: () {
                  
                },
                 icon: Icon(Icons.delete),iconSize: 30,color: Colors.black),
              ],
            ),
             Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
                'build your Career With Yourself "Abdallah Elsayed dvdvdvdvdv"',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54
                  
                ),),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Text(
                                   'May 21,2022',
                                   style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54
                                   ),),
                   ],
                 ),
          ],
        ),
      ),
    );
  }
}
