import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewTaskScreen extends StatelessWidget {
  NewTaskScreen({super.key, required this.myList});
  List<String> myList;
  @override
  Widget build(BuildContext context) {
    String title = "";
    return Scaffold(
      appBar: AppBar(
          title: const Text('New Task Screen'),
          leading: const Icon(Icons.arrow_back)),
      body: Center(
        //change child to some widget with the form fields
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter the task title',
            ),
            onChanged: (text) {
              title = text;
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myList.add(title);
          Navigator.of(context).pop();
        },
        tooltip: 'Go back',
        child: const Icon(Icons.check),
      ),
    );
  }
}
