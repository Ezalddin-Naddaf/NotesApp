import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubits/cubit/notes_cubit.dart';
import 'package:notes_app/notes_view_body.dart';
import 'package:notes_app/views/widgets/add_note.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 28, right: 12),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AddNoteBottonSheet()),
              );
            },
            backgroundColor: const Color(0xff252525),
            child: const Icon(Icons.add, color: Colors.white),
          ),
        ),
        body: const NotesViewBody());
  }
}
