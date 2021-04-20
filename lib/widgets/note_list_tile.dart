import 'package:flutter/material.dart';

class NoteListTile extends StatelessWidget {
  final String title;

  NoteListTile({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.sticky_note_2_outlined,
          color: Theme.of(context).primaryColor,
        ),
        title: Text(title),
      ),
    );
  }
}
