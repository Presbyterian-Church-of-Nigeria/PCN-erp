import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import '../../../nav/nav.dart';
//import 'package:flutter_html/flutter_html.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

//import 'package:firebase_core/firebase_core.dart' show Firebase;

class IgboHymn extends StatefulWidget {
  @override
  _IgboHymnState createState() => _IgboHymnState();
}

class _IgboHymnState extends State<IgboHymn> {
  WebViewPlusController _controller;
  double _height = 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" Igbo Hymn "),

        ),
        //drawer: Navbar(),

        body: ListView(
    children: [
    SizedBox(
    height: _height,
      child: WebViewPlus(
        javascriptChannels: null,
        initialUrl: 'assets/igbo/index.html',
        onWebViewCreated: (controller) {
          this._controller = controller;
        },
        onPageFinished: (url) {
          _controller.getHeight().then((double height) {
            print("Height: " + height.toString());
            setState(() {
              _height = height;
            });
          });
        },
        javascriptMode: JavascriptMode.unrestricted,
      ),
    )
    ],
    ),

    );

    }
}