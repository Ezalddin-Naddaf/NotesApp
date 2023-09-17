import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/notes_view.dart';

class EditNoteCustomAppBar extends StatelessWidget {
  const EditNoteCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.only(left: 20.0),
      child: Row(
        children: [
          
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xff3a3a3a),
            ),
            child: Padding(
              padding:const EdgeInsets.only(right: 3.5),
              child: IconButton(
                iconSize: 22,
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => const NotesView()),
                  );
                },
                icon: const Icon(Icons.arrow_back_ios_new),
              ),
            ),
          ),
          const SizedBox(width: 275),
          Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xff3a3a3a),
              ),
              child:const Icon(FontAwesomeIcons.penToSquare ,size: 24, ),)
        ],
      ),
    );
  }
}
