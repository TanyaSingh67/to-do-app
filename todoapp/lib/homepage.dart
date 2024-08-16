import 'package:flutter/material.dart';
import 'package:todoapp/global/colors.dart';
import 'package:todoapp/model/todo.dart';
import 'package:todoapp/widgets/todoitem.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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
                  child: Image.asset("images/name.png "),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: 
      Stack(children: [
        Container(
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
                margin: const EdgeInsets.only(top: 50, bottom: 20),
                child: const Text(
                  "All ToDos",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              for (Todo todoo in todoslist) ToDoItems(todo: todoo,
              ontodochanged: _handleTodoChange,
              ondeleteitem: () {},),
            ],
          ),
        ),
       
      ]),
),
bottomNavigationBar: BottomAppBar(
  height: 90,
  color: tdBgcolor,

          child: Row(
            children: [
              Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(
                          top: 10, right: 20, left: 10),
                      padding:
                        const  EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 10.0,
                              spreadRadius: 0.0,
                            ),
                          ]),
                          child:TextFormField(
                          decoration:const  InputDecoration(hintText: "Add a new ToDo Item",
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 16)),
                          ) ,
                          )),
              Container(
                margin:const EdgeInsets.only(top: 10, right: 10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: tdblue,
                      minimumSize: const Size(60, 60),
                      elevation: 10),
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              )
            ],
          ),
        )
,);
  }

  void _handleTodoChange(Todo todo){
    setState(() {
       todo.isdone=!todo.isdone;
    });
   

  }
}
