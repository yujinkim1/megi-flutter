import 'package:flutter/material.dart';
import './form.dart';
import '../widgets/styles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color.fromRGBO(91, 137, 252, 1),
        title: Text(
          "List",
          style: AppBarTitle,
        ),
      ),
      //MARK: -DATE OF WEEK PICKER
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
      body: Column(mainAxisSize: MainAxisSize.max, children: [
        Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.08,
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Text("tasks"),
          ),
          color: Palette.backgroundColor,
        )
      ]),
    );
  }
}
//MARK: -TWEEN ANIMATION BUILDER
/*
TrainsitionBuilder: (context, animation, secondaryAnimation, child) {
  const begin = Offset(0.0, 0.2, 1);
  const end = Offset(0.0, 0.2, -1);
}
*/