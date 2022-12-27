import 'package:flutter/material.dart';

//MARK: -APPBAR
class Palette {
  /*
    MARK: -NEW DEFINED COLOR CODES
    static const newDefinedColor = Color.fromRGBO(255, 255, 255, 0.5);
  */
  static const backgroundColor = Color(0xff5b89fc);
  static const errorColor = Color(0xffbb2649);
  static const cardColor = Color(0xffededed);
}

const TextStyle AppBarTitle =
    TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white);

const TextStyle FormAppBarTitle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: Colors.white);
const TextStyle IsEmptyText = TextStyle(
    fontSize: 20, fontWeight: FontWeight.normal, color: Colors.white24);

const TextStyle ErrorText = TextStyle(
    fontSize: 20, fontWeight: FontWeight.normal, color: Colors.redAccent);

const TextStyle taskText = TextStyle(
    color: Color.fromRGBO(255, 255, 255, 0.8),
    fontSize: 25,
    fontWeight: FontWeight.normal);
