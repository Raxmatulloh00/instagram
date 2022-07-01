import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_interfays/friends.dart';
import 'package:instagram_interfays/posts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Posts(),
    );
  }
}
