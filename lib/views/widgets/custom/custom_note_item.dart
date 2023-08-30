import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../edit notes/edit_notes_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNotesView();
            },
          ),
        );
      },
      child: Row(

        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: 180,
              height: 180,
              padding: const EdgeInsets.only(
                top: 11.5,
                left: 10,
                bottom: 12,
              ),
              decoration: BoxDecoration(
                  color: const Color(0xffFFCC80),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    trailing: Padding(
                      padding: const EdgeInsets.only(bottom:30.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.trash,
                          size: 18,
                          color: Colors.black.withOpacity(.7),
                        ),
                      ),
                    ),
                    title: const Padding(
                      padding: EdgeInsets.only(
                        top: 4,
                        bottom: 8,
                        left: 5,
                      ),
                      child: Text(
                        'Flutter tips',
                        style: TextStyle(
                            fontSize: 18.5,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                      ),
                      child: Text(
                        'How to make your presonal brand stand out  online.regjfsadkrocr;',
                        style: TextStyle(
                            fontSize: 15,
                            height: 1.1,
                            color: Colors.black.withOpacity(.4),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, right: 10),
                    child: Text(
                      'May 21/2023',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 83, 82, 82)
                            ..withOpacity(.6),
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
