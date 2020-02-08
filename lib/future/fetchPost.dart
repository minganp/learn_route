import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_route/models/post.dart';

Future<Post>fetchPost() async{
  final response=await http.get('https://jsonplaceholder.typicode.com/posts/1');
  if(response.statusCode==200){
    return Post.fromJson(json.decode(response.body));
  }else{
    throw Exception('Failed to laod post');
  }
}