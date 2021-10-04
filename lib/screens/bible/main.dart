import 'package:flutter/material.dart';
import 'package:my_hymn/hymnlist.dart';

void main() => runApp(RchApp());

class RchApp extends StatelessWidget {
  static const primaryColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Presbyterian',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: primaryColor,
        canvasColor: Colors.black,
        textTheme: Theme.of(context).textTheme.copyWith(
          
          caption: TextStyle(color: Colors.black,),
          subhead: TextStyle(fontFamily: 'Garamond',fontSize: 17.0, color: Colors.blueAccent)
          
        )
        ),
      home: HymnList( title: 'Presbyterian RCH',),
    );
  }
}

