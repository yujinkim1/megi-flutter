import 'package:flutter/material.dart';
import 'package:megi/widgets/styles.dart';

class FormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Palette.backgroundColor,
          title: Text("add", style: AppBarTitle),
          automaticallyImplyLeading: false,
        ),
        body: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Back")));
  }
}
