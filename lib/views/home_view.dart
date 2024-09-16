import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_new_item.dart';
import 'package:notes_app/widgets/custom_search.dart';
import 'package:notes_app/widgets/show_modal_sheet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.add),
        onPressed: ()
         {
showModalBottomSheet(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  backgroundColor: Colors.amber,
  context: context,
   builder: (context) {
     return ShowModalSheet();
   },
   );
         },
      ),
      body: Column(
        children: [
          CustomAppBar(icon: Icons.search, text: 'Notes',),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 15,
                );
              },
              itemCount: 20,
              itemBuilder: (context, index) {
                return CustomNoteItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}


