import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_super_demo/dartPlayground/dart_playground.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  _toDartplayground() {
    // Application.navigator.push(context, settingPage(userIn))
    // Appliation.navigator.push(SettingPage(Userinfo: userInfo));
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (conetxt) => DartPlayground(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('CupertinoNavigationBar'),
        leading: Icon(
          CupertinoIcons.left_chevron,
          color: Colors.black,
        ),
      ),
      body: Container(
        child: FlatButton(
          child: Text('dartPlayground'),
          onPressed: _toDartplayground,
        ),
      ),
    );
  }
}
