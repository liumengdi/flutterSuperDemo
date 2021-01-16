import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DartPlayground extends StatefulWidget {
  DartPlayground({Key key}) : super(key: key);

  @override
  _DartPlaygroundState createState() => _DartPlaygroundState();
}

class _DartPlaygroundState extends State<DartPlayground> {
  _onPressBtn1() {}
  _onPressBtn2() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Hello Dart'),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          children: [
            FlatButton(onPressed: _onPressBtn1, child: Text('btn1')),
            FlatButton(onPressed: _onPressBtn2, child: Text('btn2')),
          ],
        ),
      ),
    );
  }
}
