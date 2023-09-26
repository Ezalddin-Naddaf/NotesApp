import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubits/cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/custom/custom_app_bar.dart';

import 'notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

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
          CustomAppBar(hint: 'Notes', icon: Icons.search),
          SizedBox(height: 10),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
