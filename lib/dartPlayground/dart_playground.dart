import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_super_demo/dartPlayground/learnClass.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DartPlayground extends StatefulWidget {
  DartPlayground({Key key}) : super(key: key);

  @override
  _DartPlaygroundState createState() => _DartPlaygroundState();
}

class _DartPlaygroundState extends State<DartPlayground> {
  SharedPreferences prefs;
  int testValue = 0;
  _onPressBtn1() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return LearnClass();
    }));
    // prefs = await SharedPreferences.getInstance();
    // prefs.setString('key', 'valu`123e');
  }

  _onPressBtn2() {
    // testValue = 0;
    // // testExcuteOrder();

    // // 加了await 输入的testValue是修改之后的, 如果不加, 输出的是修改之前的
    // // await testAwait();
    // testAwait();
    // Future(() {
    //   testValue = 123;
    // });

    // print('testValue $testValue');
  }

  // 测试Future执行顺序
  testExcuteOrder() {
    int a = 0;
    Future f1 = Future(() {
      a = 1;
    });
    Future f3 = Future(() {
      a = 3;
    });
    Future f2 = Future(() {
      a = 2;
      return 12;
    });

    // 执行顺序和执行then的顺序无关, 和创建future的顺序有关
    f2.then((value) {
      print('F2 Excuted  $a');
    });
    f1.then((value) {
      print('F1 Excuted  $a');
    });
    f3.then((value) {
      print('F3 Excuted  $a');
    });

    print('at last $a');
  }

  testAwait() async {
    int value = await getTestAwaitValue();
    print('testValue里面$value');
  }

  Future<int> getTestAwaitValue() async {
    int value = await Future(() {
      testValue = 19;
      return 12;
    });
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('Dart'),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          children: [
            FlatButton(onPressed: _onPressBtn1, child: Text('btn0')),
            FlatButton(onPressed: _onPressBtn2, child: Text('btn2')),
          ],
        ),
      ),
    );
  }
}
