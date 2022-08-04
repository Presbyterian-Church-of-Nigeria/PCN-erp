import 'package:flutter/material.dart';

import 'package:pcn_erp/bible/pages/home_page.dart';
import 'package:pcn_erp/bible/services/books_bloc.dart';
import 'package:pcn_erp/bible/utils/constants.dart';

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
      //debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        canvasColor: background,
        primaryColor: accent,
        backgroundColor: background, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: accent),
      ),
      home: BiblePage(),
    );
  }
}

