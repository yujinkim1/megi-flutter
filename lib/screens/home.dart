import 'package:flutter/material.dart';
import '../widgets/styles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List",
          style: AppBarTitle,
        ),
      ),
      body: Column(children: [
        Center(child: Text("Hello")),
      ]),
    );
  }
}
