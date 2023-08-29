import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add%20note/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes%20list/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor:const Color(0xff2e2e2e) ,
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                context: context,
                builder: (context) {
                  return  AddNoteBottomSheet();
                });
          },
          child: const Icon(
          
            Icons.add,
            color: Colors.white,
          
          ),
        ),
        body: const NotesViewBody());
  }
}
