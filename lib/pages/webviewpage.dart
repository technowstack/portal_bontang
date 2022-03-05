// ignore_for_file: unused_element

import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:get/get.dart';

class WebViewPage extends StatefulWidget {
  static const routeName = '/article_web';

  final String url = Get.arguments;

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  WebViewController _controller;
  final Completer<WebViewController> _controlerCompleter =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portal KOTA BONTANG'),
        backgroundColor: Color(0xff002e66),
      ),
      body: Scaffold(
        body: WillPopScope(
          onWillPop: () => _goBack(context),
          child: WebView(
            initialUrl: widget.url, 
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
             _controlerCompleter.future.then((value) => _controller = value);
            _controlerCompleter.complete(webViewController);
            },
          ),
        ),
      ),
      floatingActionButton: FutureBuilder<WebViewController>(
          future: _controlerCompleter.future,
          builder: (BuildContext context,
              AsyncSnapshot<WebViewController> controller) {
            if (controller.hasData) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                child: Row(
                  children: [
                    FloatingActionButton(
                      onPressed: () async {
                        controller.data.reload();
                      },
                      backgroundColor: Color(0xff002e66),
                      child: const Icon(
                        Icons.refresh,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              );
            }
            return Container();
          }),
    );
  }

   Future<bool> _goBack(BuildContext context) async {
    if (await _controller.canGoBack()) {
      _controller.goBack();
      return Future.value(false);
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Do you want to exit'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('No'),
                  ),
                  TextButton(
                    onPressed: () {
                     Get.offAllNamed("/homepage");
                    },
                    child: Text('Yes'),
                  ),
                ],
              ));
      return Future.value(true);
    }
  }
}
