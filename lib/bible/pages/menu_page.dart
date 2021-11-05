import 'package:flutter/material.dart';
import 'package:pcn_erp/bible/models/book.dart';
import 'package:pcn_erp/bible/models/favorite.dart';
//import 'package:pcn_erp/bible/pages/about_page.dart';
import 'package:pcn_erp/bible/pages/chapter_page.dart';
import 'package:pcn_erp/bible/pages/favorites_page.dart';
import 'package:pcn_erp/bible/services/books_bloc.dart';
import 'package:pcn_erp/bible/services/favorites_bloc.dart';
import 'package:pcn_erp/bible/utils/constants.dart';
import 'package:pcn_erp/bible/utils/navigator.dart';
import 'package:pcn_erp/screens/homepage.dart';
import 'package:share/share.dart';


import 'books_list_page.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/pcnGlogo.png"),
                      fit: BoxFit.cover)),
              child: Container(),
            ),
            ListTile(
                title: Text("PCN Home"),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage()));
                }),
            ListTile(
              dense: true,
              leading: Icon(Icons.auto_stories),
              title: Text("Old Testment"),
              onTap: (() {
                Navigator.pop(context);
                push(context, BooksListPage(Testament.AT));
              }),
            ),
            ListTile(
              dense: true,
              leading: Icon(Icons.menu_book),
              title: Text("New Testment"),
              onTap: (() {
                Navigator.pop(context);
                push(context, BooksListPage(Testament.NT));
              }),
            ),
           // ListTile(
            //  leading: Icon(Icons.history),
            //  title: Text("Histórico"),
            //  subtitle: Text("Último capítulo acessado"),
            //  onTap: () => _onHistoryClick(context),
           // ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text("Favorite"),
              subtitle: Text("Favorite verses"),
              onTap: () => _onFavoritesClick(context),
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text("Most quoted verses"),
              subtitle: Text("The 200 most quoted verses"),
              onTap: () => _onOthersFavoritesClick(context),
            ),
            Divider(
              color: Colors.black26,
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
              subtitle: Text("Share with family and friends"),
              onTap: () => _onShareClick(context),
            ),
           // ListTile(
            //  leading: Icon(Icons.help_outline),
            //  title: Text("Sobre o aplicativo"),
            //  onTap: () => _onAboutClick(context),
           // ),
          ],
        ),
      ),
    );
  }

  //_onAboutClick(context) {
  //  Navigator.pop(context);
  //  push(context, AboutPage());
 // }

  _onFavoritesClick(context) {
    Navigator.pop(context);
    push(context, FavoritesPage(FavoriteType.MINE));
  }

  _onOthersFavoritesClick(BuildContext context) {
    Navigator.pop(context);
    push(context, FavoritesPage(FavoriteType.OTHERS));
  }

  // ignore: unused_element
  _onHistoryClick(BuildContext context) {
    Navigator.pop(context);
    _showChapter(context);
  }

  _onShareClick(BuildContext context) {
    Navigator.pop(context);
    final text = "I am Using PCN erp bible "
        "Download it !\n"
        "https://play.google.com/store/apps/details?id=com.pcn_erp.main";
    final RenderBox box = context.findRenderObject();
    Share.share(
      text,
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
    );
  }

  _showChapter(context) async {
    BooksBloc booksBloc = BooksBloc();
    FavoritesBloc bloc = FavoritesBloc();

    try {
      Favorite hist = await bloc.history();
      List<Book> books = await booksBloc.book(hist.verse.bookID);
      push(context, ChapterPage(hist.verse.chapter, 0, books));
    } catch (_) {}
  }
}
