import 'package:flutter/material.dart';
import 'package:indigo/exam/rush_page.dart';
import 'exam/simple_pages/simple_page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SimplePage1(),
//home: RushPage(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),

    );
  }
}
