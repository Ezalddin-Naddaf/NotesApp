import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom/custom_app_bar.dart';

import 'notes_list_view.dart';



class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 75,
        right: 20,
        left: 16.4,
      ),
      child: Column(
        children: [
      
          CustomAppBar(hint:'Notes' , icon: Icons.search),
          SizedBox(height:10),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
