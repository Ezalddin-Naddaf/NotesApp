import 'package:flutter/cupertino.dart';

import '../custom/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final data = const [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              NoteItem(),
              SizedBox(width: 15),
              NoteItem(),
            ],
          );
        },
      ),
    );
  }
}
