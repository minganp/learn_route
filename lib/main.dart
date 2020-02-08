import 'package:flutter/material.dart';
import 'package:learn_route/models/screenArguments.dart';
import 'package:learn_route/pages/homePage.dart';
import 'package:learn_route/pages/listViewPage.dart';
import 'package:learn_route/pages/notePages.dart';
import 'package:learn_route/pages/playerScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  MyApp({Key key}):super(key:key);

  @override
  _MyAppState createState()=>_MyAppState();

}

class _MyAppState extends State<MyApp> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: (settings) {
          // If you push the PassArguments route
          if (settings.name == NoteScreen.routeName) {
            // Cast the arguments to the correct type: ScreenArguments.
            final ScreenArguments args = settings.arguments;

            // Then, extract the required data from the arguments and
            // pass the data to the correct screen.
            return MaterialPageRoute(
              builder: (context) {
                return NoteScreen(
                  title: args.title,
                  message: args.message,
                );
              },
            );
          }
        },

      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:HomePage(),
      routes: {
        PlayerScreen.routeName:(context)=>PlayerScreen(),
        ListViewPage.routeName:(context)=>ListViewPage(),
      }
    );
  }
}

