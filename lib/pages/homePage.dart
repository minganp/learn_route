import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_route/customedWidget/selectionButton.dart';
import 'package:learn_route/models/screenArguments.dart';
import 'package:learn_route/pages/listViewPage.dart';
import 'package:learn_route/pages/notePages.dart';
import 'package:learn_route/pages/playerScreen.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child:Column(
          children:<Widget>[
            RaisedButton(
              child:Text('Lunch Player Screen'),
                onPressed: (){
                  Navigator.pushNamed(
                    context,
                    PlayerScreen.routeName,
                    arguments: ScreenArguments(
                      'Play movie 1',
                        'Will go back'
                    ),
                  );
                },
            ),
            RaisedButton(
              child:Text('Lunch Note Screen'),
              onPressed: (){
                Navigator.pushNamed(
                  context,
                  NoteScreen.routeName,
                  arguments: ScreenArguments(
                    'Note Page',
                    'on generate route function',
                  )
                );
              },
            ),
            SelectionButton(),
            RaisedButton(
              child: Text('Lunch Lists View'),
              onPressed: (){
                Navigator.pushNamed(
                    context,
                    ListViewPage.routeName,
                );
              },
            ),
          ]
        ),
      )
    );
  }
}