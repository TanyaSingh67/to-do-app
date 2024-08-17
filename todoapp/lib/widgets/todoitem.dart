import 'package:flutter/material.dart';
import 'package:todoapp/global/colors.dart';
import 'package:todoapp/model/todo.dart';

class ToDoItems extends StatelessWidget {
  final Todo todo;
  final ontodochanged;
  final ondeleteitem;
  const ToDoItems({super.key, required this.todo, required this.ontodochanged,required this.ondeleteitem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
         ontodochanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
         todo.isdone? Icons.check_box:Icons.check_box_outline_blank,
          color: tdblue,
        ),
        title: Text(
          todo.todotext,
          style: TextStyle(
              fontSize: 16,
              color: tdblack,
              decoration: todo.isdone? TextDecoration.lineThrough:null,
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
             ondeleteitem(todo.id);
             
            },
          ),
        ),
      ),
    );
  }
}
