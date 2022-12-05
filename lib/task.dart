import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Task extends StatefulWidget {
  Task({super.key, required this.taskTitle});
  List<String> taskTitle;
  String taskDescription = "TODO: description";
  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  List<Container> list = <Container>[];
  String? character;

  @override
  Widget build(BuildContext context) {
    list.clear();
    for (String hola in widget.taskTitle) {
      list.add(
        Container(
          margin: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Radio<String>(
                value: hola,
                groupValue: character,
                onChanged: (String? value) => setState(() {
                  widget.taskTitle.remove(value);
                  list.clear();
                }),
              ),
              Text(
                hola.toString(),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: list,
      ),
    );
  }
}
