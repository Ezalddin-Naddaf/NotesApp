import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 70),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAppBar(),
          SizedBox(
            height: 15,
          ),
          NoteItem(),
        ],
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            padding:const EdgeInsets.only(top: 12 , left: 16 , bottom: 12 , right: 8),
            decoration: BoxDecoration(
                color: const Color(0xffFFCC80),
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  
                  contentPadding:const EdgeInsets.all(0),
                  trailing: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 15 , bottom: 12),
                        child: Icon(FontAwesomeIcons.trash,
                            size: 25, color: Colors.black.withOpacity(.7)),
                      ),
                    ),
                  ),
                  title: const Padding(
                    padding: EdgeInsets.only(top: 8.0, bottom: 12 ),
                    child: Text(
                      'Flutter tips',
                      style: TextStyle(fontSize: 34, color: Colors.black),
                    ),
                  ),
                  subtitle: Text(
                    'How to make your presonal brand stand out  online',
                    style: TextStyle(
                        fontSize: 18,
                        height: 1.4,
                        color: Colors.black.withOpacity(.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Text(
                    'May 21/2023',
                    style: TextStyle(color: Colors.black.withOpacity(.6) , fontSize: 15),
                  ),
                )
              ],
            ), 
          ),
        ),
      ],
    );
  }
}
