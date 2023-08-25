import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_textfield.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 70,
          ),
          child: CustomAppBar(
            hint: 'Edit Note',
            icon: Icons.done,
          ),
        ),
        const SizedBox(height: 40),
        CustomTextField(
          hint: 'New Title',
        ),
        const SizedBox(height: 20),
        const CustomTextField(
          hint: 'New Content',
          maxLines: 5,
        )
      ]),
    );
  }
}
