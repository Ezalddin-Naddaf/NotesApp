import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 70, right: 40, left: 32),
      child: Column(
        children: [
          CustomAppBar(),

          Expanded(
            child: NotesListView(), ),
        ],
      ),
    );
  }
}
