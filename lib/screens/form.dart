import 'package:flutter/material.dart';
import 'package:megi/screens/home.dart';
import 'package:megi/widgets/styles.dart';

class LocalizationKR {
  static const titleLabel = "제목";
  static const subjectLabel = "부제목";
  static const submitLabel = "추가하기";
}

class FormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Palette.backgroundColor,
          title: Text(
            "new contents",
            style: FormAppBarTitle,
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop(HomeScreen());
                },
                icon: Icon(Icons.expand_more_outlined,
                    size: 40, color: Color(0xffffffff)))
          ],
        ),
        body: Column(children: [Forms()]));
  }
}

class Forms extends StatefulWidget {
  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  labelText: LocalizationKR.titleLabel,
                  border: OutlineInputBorder()),
              textAlign: TextAlign.start,
              obscureText: false,
            )),
        Container(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    labelText: LocalizationKR.subjectLabel,
                    border: OutlineInputBorder()))),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Palette.backgroundColor),
            onPressed: () {
              Navigator.of(context).pop(HomeScreen());
            },
            child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.08,
                child: Center(
                    child: Text(LocalizationKR.submitLabel,
                        style: TextStyle(
                            color: Color(0xffffffff), fontSize: 20)))))
      ]),
    );
  }
}
