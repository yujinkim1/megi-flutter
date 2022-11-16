import 'package:flutter/material.dart';
import './form.dart';
import '../widgets/styles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Palette.backgroundColor,
        toolbarHeight: 150,
        title: Text(
          "List",
          style: AppBarTitle,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FormScreen()));
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
        backgroundColor: Palette.backgroundColor,
      ),
    );
  }
}
