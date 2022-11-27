import 'package:flutter/material.dart';
import 'package:megi/widgets/styles.dart';
import './screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //MARK: -ROOT WIDGET
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'megi',
        theme: ThemeData(
          //MARK: 1-USE MATERIAL3
          useMaterial3: true,
          //MARK: 2-DEFINED TARGET PLATFORM
          platform: TargetPlatform.iOS,
          errorColor: Palette.error,
        ),
        //MARK: 3-REMOVE DEBUG LABEL
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}

//MARK: -NONE DEBUG
/*
initialRoute: "/",
  routes: <String, WidgetBuilder>{
    "/": (BuildContext context) => HomeScreen(),
    "/form": (BuildContext context) => FormScreen()
  },
*/
