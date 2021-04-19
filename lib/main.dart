// import 'package:flutter/material.dart';
import 'package:flutter_super_demo/models/base_model.dart';
import 'package:flutter_super_demo/pages/home_page.dart';
import 'package:flutter/cupertino.dart';

class Test {
  final String name;
  const Test({this.name});
}

void main() {
  const constVar = Test(name: '1111');

  // const aList = [];

  // aList.add('as');

  // constVar.name = 'adsd';

  // constVar['sd'] = 'adsd';

  // final finalVar = 2;
  // // constVar = 2;
  // // finalVar = 2;

  // const variabel = 123;
  // variabel = 11;
  // // const v2 = DateTime.now();

  // final birth = 123;
  // birth = 222;

  // birth = DateTime.now();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
