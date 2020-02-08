import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_route/customedWidget/todoList.dart';
import 'package:learn_route/models/toDo.dart';

class DetailScreen extends StatelessWidget{
  final Todo todo;

  DetailScreen({Key,key,@required this.todo}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Center(
        child: Text(todo.description),
      ),
    );
  }
}