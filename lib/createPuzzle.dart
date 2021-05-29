import 'package:flutter/material.dart';

final TextEditingController _descriptionController =
new TextEditingController();
final TextEditingController _selection1Controller = new TextEditingController();
final TextEditingController _selection2Controller = new TextEditingController();
final TextEditingController _selection3Controller = new TextEditingController();
final TextEditingController _selection4Controller = new TextEditingController();

var _answer = 1;

class CreatePuzzle extends StatefulWidget {
  @override
  _CreatePuzzleState createState() => _CreatePuzzleState();
}

class _CreatePuzzleState extends State<CreatePuzzle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        height: 120.0,
        child: Padding(
          padding: EdgeInsets.fromLTRB(5, 15, 5, 15),
          child: Column(
            children: [
              Container(
                child: Text(
                  'Create Your Own Puzzle!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).pushNamed('/CreateTextQuiz');
                  },
                  leading: Icon(Icons.text_fields, size: 40),
                  title: Text('Text Quiz', style: TextStyle(color: Colors.black,fontSize: 18)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).pushNamed('/CreatePhotoQuiz');
                  },
                  leading: Icon(Icons.photo, size: 40),
                  title: Text('Photo Quiz', style: TextStyle(color: Colors.black, fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
