import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter/material.dart';

class AppWebView extends StatelessWidget {
  final String url;

  const AppWebView({
    Key key,
    @required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Some App"),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
