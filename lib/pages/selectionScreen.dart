import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectionScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick an option'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                Navigator.pop(context,'Yep!');

              },
              child: Text('Yep!'),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.pop(context,'Nope!');

              },
              child: Text('Nope!'),
            )
          ],
        ),
      ),
    );
  }
}