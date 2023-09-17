import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom/custom_textfield.dart';
import 'package:notes_app/views/widgets/custom/editNoteCustomppBar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      SizedBox(
        height: 20,
      ),
      Column(
        children: [
          EditNoteCustomAppBar(),
          SizedBox(
            height: 40,
          ),
          CustomTextField(
            hint: 'Title',
            fontSize: 40,
          ),
          SizedBox(
            height: 25,
          ),
          CustomTextField(
            hint: 'Content...',
            fontSize: 24,
            MaxLines: 100,
          ),
        ],
      ),
    ]);
  }
}
