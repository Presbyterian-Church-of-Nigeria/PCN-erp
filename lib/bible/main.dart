import 'package:flutter/material.dart';

import 'package:pcn_erp/bible/pages/home_page.dart';
import 'package:pcn_erp/bible/services/books_bloc.dart';

final BooksBloc booksBloc = BooksBloc();

void main() => runApp(MyBible());

class MyBible extends StatefulWidget {
  @override
  _MyBibleState createState() => _MyBibleState();
}

class _MyBibleState extends State<MyBible> {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor: Colors.deepPurple,
      scaffoldBackgroundColor: Colors.white,
      canvasColor: Colors.white,
      fontFamily: 'Montserrat-Regular',
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(fontSize: 15.0, fontFamily: 'Montserrat-Regular'),
      ),
    ),
      home: BiblePage(),
    );
  }
}

