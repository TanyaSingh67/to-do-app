import 'package:flutter/material.dart';
import 'package:todoapp/global/colors.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(
     backgroundColor: tdBgcolor,
     title: Row(
      children: [
        Icon(Icons.menu, color: tdblack,size: 30,),
        Expanded(child: Container(height:40 ,width:40 ,child: ClipRRect(child: Image.asset("  "),),),),

      ],
     ),
     ) , 
     body: Container(
      
     ),
    );
  }
}