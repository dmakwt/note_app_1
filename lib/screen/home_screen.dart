import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_list_tile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _titleTextEditingController =
      TextEditingController();

  final TextEditingController _bodyTextEditingController =
      TextEditingController();

  List<Map<String, dynamic>> notes = [];

  void addNote() {
    var note = {
      'title': _titleTextEditingController.text,
      'body': _bodyTextEditingController.text,
    };
    notes.insert(0, note);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 30,
          ),
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {
            addNote();
          },
        ),
        appBar: AppBar(
          title: Text(
            'Notes',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Card(
                  elevation: 10,
                  child: ListTile(
                    title: Column(
                      children: [
                        TextField(
                          controller: _titleTextEditingController,
                          onSubmitted: (value) {
                            addNote();
                          },
                          decoration: InputDecoration(
                            hintText: 'Title',
                            border: InputBorder.none,
                          ),
                        ),
                        TextField(
                          controller: _bodyTextEditingController,
                          onSubmitted: (value) {
                            addNote();
                          },
                          decoration: InputDecoration(
                            hintText: 'Body',
                            border: InputBorder.none,
                          ),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      iconSize: 32,
                      icon: Icon(
                        Icons.add_box,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {
                        addNote();
                      },
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView.builder(
                  itemCount: notes.length,
                  itemBuilder: (BuildContext context, int index) {
                    var note = notes[index];

                    return NoteListTile(
                      note['title'],
                      note['body'],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
