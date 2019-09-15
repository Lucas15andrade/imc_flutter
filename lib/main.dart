import 'package:flutter/material.dart';
import 'component/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC',
      theme: ThemeData(backgroundColor: Colors.black),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
