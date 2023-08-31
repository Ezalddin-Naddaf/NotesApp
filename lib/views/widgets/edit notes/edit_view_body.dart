import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom/custom_textfield.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 70,
          ),
          child: Padding(
            padding: EdgeInsets.only(right: 2.4),
            child: CustomAppBar(
              hint: 'Edit Note',
              icon: Icons.done,
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomTextField(
            hint: 'New Title',
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomTextField(
            hint: 'New Content',
            maxLines: 5,
          ),
        )
      ],
    );
  }
}
