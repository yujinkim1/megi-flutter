import 'package:flutter/material.dart';
import 'package:megi/widgets/styles.dart';
import './screens/home.dart';

void main() {
  runApp(MyApp());
}

///ROOT WIDGET
class MyApp extends StatelessWidget {
  //MARK: 4-ROOT WIDGET
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //MARK: 5-REMOVE DEBUG LABEL
        debugShowCheckedModeBanner: false,
        title: 'megi',
        theme: ThemeData(
          //MARK: 1-USING MATERIAL3 DESIGN
          useMaterial3: true,
          //MARK: 2-TARGET PLATFORM ONLY IOS(TEMPORARLIY)
          platform: TargetPlatform.iOS,
          //MARK: 3-DEFINED PRIMARY COLOR SWATCH
          colorScheme: ColorScheme.fromSwatch(
              errorColor: Palette.errorColor,
              cardColor: Palette.cardColor,
              brightness: Brightness.light),
        ),
        home: HomeScreen());
  }
}
