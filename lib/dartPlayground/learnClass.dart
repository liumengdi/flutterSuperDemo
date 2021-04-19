import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_super_demo/dartPlayground/webpage.dart';
import 'package:flutter_super_demo/models/base_model.dart';

class LearnClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnClassState();
  }
}

class _LearnClassState extends State {
  _handlePressBtn1() {
    var asad = Point.c;
    print(asad);

    Point aPoint = Point(1, 3, c: 12);

    var sdsad = Point.c;

    print(sdsad);
    Point aPoint2 = Point(1, 3);

    var sdadsdadd = Point.c;

    print(sdadsdadd);

    if (identical(aPoint2, aPoint)) {
      print('asd');
    }

    // 常量构造函数, 这俩内存内置一样, 是一个对象
    var immutablePoint1 = const ImmutablePoint(2, 3);
    var immutablePoint2 = const ImmutablePoint(2, 3);
    var cccc = identityHashCode(immutablePoint1);
    var ddddd = identityHashCode(immutablePoint2);

    Point bPoint = Point.origin();

    print(aPoint);
    f1(b: 2);
  }

  f1({int a = 2, @required int b}) {
    print(a + b);
  }

  _handlePressBtn2() {
    Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
      return WebPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Class'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            RaisedButton(onPressed: _handlePressBtn1),
            RaisedButton(onPressed: _handlePressBtn2),
            Container(
              width: 200,
              height: 100,
              color: Colors.red.withOpacity(0.1),
              child: Text('Colors.red.withOpacity(0.1) 背景Opacity不影响'),
            ),
            Container(
              width: 200,
              height: 100,
              color: Color(0x1200ff00),
              child: Text('Color(0x1200ff00)带透明度颜色,也不影响'),
            ),
            Divider(),
            Container(
              width: 200,
              height: 100,
              color: Color.fromARGB(100, 100, 100, 2),
              child: Text('fromARGB,也不影响'),
            ),
            Divider(),
            Container(
              width: 200,
              height: 100,
              color: Color.fromRGBO(200, 100, 120, 0.1),
              child: Text('fromRGBO,也不影响'),
            ),
            Divider(),
            Opacity(
              opacity: 0.2,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.green,
                child: Text('外层套Opacity组件, 能影响!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
