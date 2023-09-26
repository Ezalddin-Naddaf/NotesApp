import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom/custom_textfield.dart';
import 'package:notes_app/views/widgets/custom/editNoteCustomppBar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const SizedBox(
        height: 20,
      ),
      Column(
        children: [
          EditNoteCustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);

            },
          ),
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            onChanged: (vaule) {
              title = vaule;
            },
            hint: widget.note.title,
            fontSize: 34,
            MaxLines: 1,
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            onChanged: (vaule) {
              content = vaule;
            },
            hint: widget.note.subTitle,
            fontSize: 24,
            MaxLines: 300,
          ),
        ],
      ),
    ]);
  }
}
