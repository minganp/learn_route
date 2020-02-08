import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteScreen extends StatelessWidget{
  static const routeName='/NoteScreen';
  final String title;
  final String message;

  const NoteScreen({
    Key key,
    @required this.title,
    @required this.message,
}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}