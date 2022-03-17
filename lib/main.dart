import 'package:flutter/material.dart';
import 'pages/main/main_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '网抑云音乐',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink 
      ),
      home: const IndexPage(),
    );
  }
}