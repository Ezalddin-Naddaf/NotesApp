import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'edit_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold
    (
    body:EditNotesViewBody()
    );
  }
}