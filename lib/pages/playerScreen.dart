import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_route/models/screenArguments.dart';

class PlayerScreen extends StatelessWidget{
  static const routeName='/PlayerScreen';
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args=ModalRoute.of(context).settings.arguments;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text(args.message),
        ),
      ),
    );
  }
}