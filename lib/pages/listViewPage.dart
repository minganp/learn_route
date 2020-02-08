import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_route/customedWidget/todoList.dart';

class ListViewPage extends StatelessWidget{
  static const routeName='/listViewPage';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title:Text('To Do Lists')),
      body: TodoLists(),
    );
  }
}