import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      this.onSaved,
      required this.fontSize,
      this.MaxLines = 1});
  final String? hint;
  final int MaxLines;
  final void Function(String?)? onSaved;
  final double fontSize;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: TextFormField(
        maxLines: MaxLines,
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is required';
          } else {
            return null;
          }
        },
        cursorColor: kPrimaryColor,
        decoration: InputDecoration.collapsed(
            hintText: hint, hintStyle: TextStyle(fontSize: fontSize)),
      ),
    );
  }
}






