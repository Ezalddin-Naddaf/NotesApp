import 'package:flutter/cupertino.dart';

import '../custom/custom_bottun.dart';
import '../custom/custom_textfield.dart';



class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 20),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(height: 40),
          CustomButtom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}