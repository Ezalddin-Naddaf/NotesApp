import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/views/widgets/add_note.dart';

class PrivateCustomAppBar extends StatelessWidget {
  const PrivateCustomAppBar({
    super.key, this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
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
              padding: EdgeInsets.only(right: 3.5),
              child: IconButton(
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
          const SizedBox(width: 240),
          GestureDetector(
            onTap: onTap,
            child: Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xff3a3a3a),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 13, right: 10),
                  child: Text(
                    'Save',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
