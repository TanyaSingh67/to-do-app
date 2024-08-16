import 'package:flutter/material.dart';

class Todo{
  String id;
  String todotext;
  bool isdone;
  Todo({
     required this.id,
    required this.todotext,
    this.isdone=false,
    });
    static Set<Todo> todolist() {
      return {
          Todo(id:'01',todotext:"morning exercise",isdone:true),
          Todo(id:'02',todotext:"buy groceries",isdone:true),
          Todo(id:'03',todotext:"check emails"),
          Todo(id:'04',todotext:"team meeting"),
          Todo(id:'05',todotext:"work on mobile apps for 1 hour"),
          Todo(id:'06',todotext:"youtube"),
          Todo(id:'07',todotext:"evening walk"),
    };
      }
}