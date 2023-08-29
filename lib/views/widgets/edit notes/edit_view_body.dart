import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom/custom_textfield.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(children: [
         Padding(
          padding: EdgeInsets.symmetric(
            vertical: 70,
          ),
          child: CustomAppBar(
            hint: 'Edit Note',
            icon: Icons.done,
          ),
        ),
         SizedBox(height: 40),
        CustomTextField(
          hint: 'New Title',
        ),
         SizedBox(height: 20),
         CustomTextField(
          hint: 'New Content',
          maxLines: 5,
        )
      ]),
    );
  }
}
