import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom/custom_app_bar.dart';
import 'notes_list_view.dart';



class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 70,
        right: 20,
        left: 15,
      ),
      child: Column(
        children: [
          CustomAppBar(hint:'Notes' , icon: Icons.search),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
