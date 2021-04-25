import 'package:flutter/material.dart';
import 'package:notes_app/screen/note_screen.dart';

class NoteListTile extends StatelessWidget {
  final String title;
  final String body;

  NoteListTile(
    this.title,
    this.body,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 3,
        child: ListTile(
          leading: Icon(
            Icons.sticky_note_2_outlined,
            color: Theme.of(context).primaryColor,
          ),
          title: Text(title),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return NoteScreen(
                    title,
                    body,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
