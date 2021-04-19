import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPage extends StatefulWidget {
  WebPage({Key key}) : super(key: key);

  @override
  _WebPage createState() => _WebPage();
}

class _WebPage extends State<WebPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('adasds'),
      ),
      body: Container(
        child: WebView(
          initialUrl: 'https://www.baidu.com/',
          navigationDelegate: (NavigationRequest request) {
            if (request.url.contains("tel:")) {
              return NavigationDecision.prevent;
            } else if (request.url.contains("auntieGang://setting")) {
              print(request.url);
            } else {
              print(request.url);

              return NavigationDecision.navigate;
            }
          },
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
