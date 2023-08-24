import 'package:flutter/cupertino.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_textfield.dart';

import 'custom_bottun.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(height: 20),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(height: 40),
            CustomButtom(),
          ],
        ),
      ),
    );
  }
}


