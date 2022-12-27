import 'package:flutter/material.dart';
import '../utilities/sender.dart';
import '../widgets/styles.dart';
import '../utilities/route_animation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final listCount = 0;
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
        actions: <Widget>[
          IconButton(
              padding: EdgeInsets.zero,
              onPressed: sender,
              icon: Icon(
                Icons.reviews,
                color: Colors.white,
                size: 30,
              ))
        ],
      ),
      /* *MARK: -FLOATING ACTION BUTTON TO NAVIGATING CUSTOM ROUTE PAGE* */
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(routeToForm());
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
        backgroundColor: Palette.backgroundColor,
      ),
      body: Column(mainAxisSize: MainAxisSize.max, children: [
        Container(
          /* *MARK: -RESPONSIVE WIDGET TO USE MEDIAQUERY* */
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.08,
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Text("$listCount tasks", style: taskText),
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