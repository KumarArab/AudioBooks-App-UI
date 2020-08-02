import 'package:AudioBooks/book_home.dart';
import 'package:AudioBooks/book_read.dart';
import 'package:AudioBooks/books_details.dart';
import 'package:AudioBooks/books_splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: "SourceSansPro"),
      home: BooksSplash(),
    );
  }
}
