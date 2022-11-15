import 'package:flutter/material.dart';
import './screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'megi',
        theme: ThemeData(
          //MARK: USE MATERIAL3
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen());
  }
}
