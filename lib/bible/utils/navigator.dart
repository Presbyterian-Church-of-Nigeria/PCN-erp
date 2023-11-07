import 'package:flutter/material.dart';

import 'package:pcn_erp/bible/models/book.dart';
import 'package:pcn_erp/bible/pages/chapter_page.dart';
import 'package:pcn_erp/bible/services/books_bloc.dart';
import 'package:pcn_erp/bible/utils/widgets.dart';

Future push(BuildContext context, Widget page) {
  return Navigator.push(context,
      MaterialPageRoute(builder: (BuildContext context) {
        return page;
      }));
}

void goHome(BuildContext context) {
  Navigator.popUntil(context, (Route<dynamic> route) => route.isFirst);
}


void goBooks(BuildContext context) {
  Navigator.popUntil(context, (Route<dynamic> route) => route.isFirst);
}

goChapter(context, verse) async {
  BooksBloc bloc = BooksBloc();
  try {
    List<Book>? books = await bloc.book(verse.bookID);
    push(
      context,
      ChapterPage(verse.chapter, 0, books!, verse.verseTxt),
    );
  } catch (e) {
    return centerText("Error displaying chapter.");
  }
}