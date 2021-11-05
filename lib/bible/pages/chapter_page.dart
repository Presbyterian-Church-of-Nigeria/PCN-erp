import 'package:flutter/material.dart';
import 'package:pcn_erp/bible/models/book.dart';
import 'package:pcn_erp/bible/models/favorite.dart';
import 'package:pcn_erp/bible/models/verse.dart';
import 'package:pcn_erp/bible/services/favorites_bloc.dart';
import 'package:pcn_erp/bible/services/verse_bloc.dart';
import 'package:pcn_erp/bible/utils/constants.dart';
import 'package:pcn_erp/bible/utils/dialogs.dart';
import 'package:pcn_erp/bible/utils/navigator.dart';
import 'package:pcn_erp/bible/utils/text_utils.dart';
import 'package:pcn_erp/bible/utils/widgets.dart';

// ignore: must_be_immutable
class ChapterPage extends StatefulWidget {
  List<Book> books;
  String verseText;
  Book book;
  int bookID;
  int chapter;
  int idxBook;

  ChapterPage(this.chapter, this.idxBook, this.books, [this.verseText = ""]);

  @override
  _ChapterPageState createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage> {
  ScrollController controller;
  DateTime initRead = DateTime.now();
  DateTime endRead = DateTime.now();
  int qtdVerses = 0;

  VerseBloc _bloc = VerseBloc();
  FavoritesBloc _favBloc = FavoritesBloc();
  Book book;

  _ChapterPageState();

  @override
  void initState() {
    super.initState();
    book = widget.books[widget.idxBook];
    _bloc.bookVerses(book.bookID, widget.chapter);
    controller = ScrollController()..addListener(() => _scrollListener());
    _saveHistory(_favBloc);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: _bloc.stream,
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(
              title: Text("${book.bookName}, ${widget.chapter}"),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      goHome(context);
                    })
              ],
            ),
            body: _body(),
          );
        });
  }

  _body() {
    return GestureDetector(
      onHorizontalDragEnd: (details) => _onHorizontalDrag(details),
      child: StreamBuilder(
        stream: _bloc.stream,
        builder: (context, snapshot) {
          if (snapshot.hasError)
            return centerText("Error Loading Chapter.");

          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());

          return _listView(snapshot.data);
        },
      ),
    );
  }

  _listView(verses) {
    qtdVerses = verses.length;
    return Scrollbar(
      child: ListView.builder(
        controller: controller,
        itemCount: qtdVerses,
        itemBuilder: (context, index) =>_itemView(context, verses, index),
      ),
    );
  }

  _itemView(context, verses, index) {
    Verse bible = verses[index ?? 0];
    bible.bookName = book.bookName;

    FontWeight weight = (bible.verseTxt == widget.verseText)
        ? FontWeight.bold
        : FontWeight.normal;

    return InkWell(
      onLongPress: () {
        _onLongPress(bible);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
        child: Text(
          "${bible.verseID} ${cleanVerse(bible.verseTxt)}",
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: weight,
          ),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  _onHorizontalDrag(details) {
    if (details.primaryVelocity == 0) return;

    // restart tempo de leitura
    initRead = DateTime.now();

    List next = _bloc.nextChapter(
        details, widget.idxBook, widget.chapter, widget.books);
    widget.idxBook = next[0];
    widget.chapter = next[1];
    book = widget.books[widget.idxBook];
    _bloc.bookVerses(book.bookID, widget.chapter);
    PageView.builder(itemBuilder: (context, position) {
      return Container();
    });
  }

  _onLongPress(verse) {
    bottomSheetCopyFavorite(context, verse);
  }

  _scrollListener() async {
    // registra leitura do capítulo
    Favorite favorite =
        Favorite.marked(bookID: book.bookID, chapter: widget.chapter);

    if (controller.position.atEdge) {
      int secs = qtdVerses * 5;

      if (controller.position.pixels != 0) {
        endRead = DateTime.now();
        if (endRead.difference(initRead) > Duration(seconds: secs)) {
          bool marked = await _favBloc.isMarked(favorite);
          if (!marked) bottomSheetSaved(context, _favBloc, favorite, book);
        }
      }
    }
  }

  _saveHistory(FavoritesBloc bloc) async {
    Favorite hist = await bloc.history();
    hist.verse.bookID = book.bookID;
    hist.verse.chapter = widget.chapter;
    bloc.include(hist);
  }

  @override
  void dispose() {
    controller.dispose();
    _bloc.dispose();
    _favBloc.dispose();
    super.dispose();
  }
}
