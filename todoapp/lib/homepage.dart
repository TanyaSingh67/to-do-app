import 'package:flutter/material.dart';
import 'package:todoapp/global/colors.dart';
import 'package:todoapp/model/todo.dart';
import 'package:todoapp/widgets/todoitem.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});
get todoslist => Todo.todolist();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: tdBgcolor,
        appBar: AppBar(
          backgroundColor: tdBgcolor,
          elevation: 0,
          title: Row(
            children: [
              const Icon(
                Icons.menu,
                color: tdblack,
                size: 30,
              ),
              Expanded(
                child: Container(
                  height: 40,
                  width: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(" "),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        prefixIcon: Icon(
                          Icons.search,
                          color: tdblack,
                          size: 20,
                        ),
                        prefixIconConstraints:
                            BoxConstraints(maxHeight: 20, minWidth: 25),
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(color: tdgrey)),
                  ),
                ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(top:50,bottom: 20),
                child: Text("All ToDos",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              ),
             for(Todo todoo in todoslist)
             ToDoItems(todo:todoo),
             
             

            
              ],
            ),
          ),
        ));
  }
}
