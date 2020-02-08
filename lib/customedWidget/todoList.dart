import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_route/models/toDo.dart';
import 'package:learn_route/pages/detailPage.dart';

class TodoLists extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final todos=List<Todo>.generate(
        20,
        (i)=>Todo(
          'Todo$i',
          'A description of what needs to be done for Todo $i',
        )
    );

    // TODO: implement build
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context,index){
        return ListTile(
          title: Text(todos[index].title),
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>DetailScreen(todo: todos[index],)
                )
            );
          },
        );
      },
    );
  }
}