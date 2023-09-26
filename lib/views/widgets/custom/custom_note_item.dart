import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/editNote_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return  EditNoteView(
                note: note,
              );
            },
          ),
        );
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 13),
            child: Container(
              width: 182.4,
              height: 185,
              padding: const EdgeInsets.only(
                top: 11.5,
                left: 10,
                bottom: 12,
              ),
              decoration: BoxDecoration(
                  color: Color(note.color),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    trailing: Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: IconButton(
                        onPressed: () {
                          note.delete();
                          BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                        },
                        icon: Icon(
                          FontAwesomeIcons.trash,
                          size: 18,
                          color: Colors.black.withOpacity(.7),
                        ),
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(
                        top: 4,
                        bottom: 8,
                        left: 5,
                      ),
                      child: Text(
                        note.title,
                        style: const TextStyle(
                          fontSize: 21,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                      ),
                      child: Text(
                        note.subTitle,
                        style: TextStyle(
                            fontSize: 15,
                            height: 1.2,
                            color: Colors.black.withOpacity(.4),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, right: 10),
                    child: Text(
                      note.date,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 19, 19, 19)
                              .withOpacity(.5),
                          fontSize: 11.5,
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
