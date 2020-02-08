import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_route/future/fetchPost.dart';
import 'package:learn_route/models/post.dart';

class FetchHttpPage extends StatefulWidget{
  FetchHttpPage({Key key}):super(key:key);

  @override
  FetchHttpState createState()=>FetchHttpState();
}

class FetchHttpState extends State<FetchHttpPage>{
  Future<Post> post;

  @override
  void initState(){
    super.initState();
    post=fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title:Text('Data From Web Site')),
      body: Center(
        child: FutureBuilder<Post>(
          future: post,
          builder: (context,snapshot){
            if(snapshot.hasData){
              return Text(snapshot.data.title);
            }else if(snapshot.hasError){
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}