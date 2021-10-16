import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({Key? key}) : super(key: key);

  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        centerTitle: true,
        title: Image.asset(
          'assets/images/efind.png',
          scale: 4,
        ),
      ),
      body: const WebView(
        initialUrl: 'https://www.facebook.com/kao.kanhchana',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
