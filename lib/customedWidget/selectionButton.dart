import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_route/pages/selectionScreen.dart';

class SelectionButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Text('Pick an option,any option!'),
    );
  }
    _navigateAndDisplaySelection(BuildContext context) async{
      final result=await Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>SelectionScreen()),
      );
      Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("$result"),));
    }
}