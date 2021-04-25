import 'package:flutter/material.dart';

class NoteScreen extends StatefulWidget {
  final String title;
  final String body;
  NoteScreen(
    this.title,
    this.body,
  );

  @override
  _NoteScreenState createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Card(
        elevation: 4,
        child: Center(
          child: Text(
            widget.body,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
