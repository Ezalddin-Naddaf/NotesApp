import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes%20cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/add%20note/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes%20list/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
          // resizeToAvoidBottomInset: false,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(right: 8.0, bottom: 24),
            child: FloatingActionButton(
              backgroundColor: const Color(0xff2e2e2e),
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    context: context,
                    builder: (context) {
                      return const AddNoteBottomSheet();
                    });
              },
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          body: const NotesViewBody()),
    );
  }
}
