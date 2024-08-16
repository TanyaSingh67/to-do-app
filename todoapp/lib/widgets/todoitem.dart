import 'package:flutter/material.dart';
import 'package:todoapp/global/colors.dart';
import 'package:todoapp/model/todo.dart';

class ToDoItems extends StatelessWidget {
  final Todo todo;
  const ToDoItems({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print("clicked on todo item");
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: const Icon(
          Icons.check_box,
          color: tdblue,
        ),
        title: Text(
          todo.todotext,
          style: TextStyle(
              fontSize: 16,
              color: tdblack,
              
             ),
             
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: tdred, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              print("Clicked on delete button");
            },
          ),
        ),
      ),
    );
  }
}
