import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:labirent_game/view/level_one_page.dart';
import 'package:labirent_game/view/start_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      
      ),
      home: StartPage(),
    );
  }
}
