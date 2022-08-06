import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:pcn_erp/bible/models/favorite.dart';
import 'package:pcn_erp/bible/models/verse.dart';
import 'package:pcn_erp/bible/services/books_bloc.dart';
import 'package:pcn_erp/bible/services/favorites_bloc.dart';
import 'package:pcn_erp/bible/utils/constants.dart';
import 'package:pcn_erp/bible/utils/dialogs.dart';
import 'package:pcn_erp/bible/utils/navigator.dart';
import 'package:pcn_erp/bible/utils/widgets.dart';

class FavoritesPage extends StatefulWidget {
  final FavoriteType favoriteType;

  FavoritesPage(this.favoriteType);

  @override
  _FavoritesPageState createState() => new _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  BooksBloc _booksBloc = BooksBloc();
  FavoritesBloc _favBloc = FavoritesBloc();
  bool _isRemovable;

  get type => widget.favoriteType;

  @override
  void initState() {
    super.initState();
    _isRemovable = (type == FavoriteType.MINE);
    _favBloc.favorites(type.index);
  }

  @override
  Widget build(BuildContext context) {
    String title = _isRemovable ? "My favorites" : "Known";

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.deepPurple.withOpacity(0.7),
        title: Text(title),
      ),
      body: _body(),
    );
  }

  _body() {
    return StreamBuilder(
      stream: _favBloc.stream,
      builder: (context, snapshot) {
        if (snapshot.hasError) return centerText("Error reading verse list.");

        if (!snapshot.hasData)
          return Center(child: CircularProgressIndicator());

        return RefreshIndicator(
          child: _listView(snapshot.data),
          onRefresh: () => _onRefreshIndicator(),
        );
      },
    );
  }

  _listView(verses) {
    return Scrollbar(
      child: ListView.builder(
        itemCount: (verses != null) ? verses.length : 0,
        itemBuilder: (context, index) => _itemView(context, verses, index),
      ),
    );
  }

  _itemView(context, verses, index) {
    Favorite favorite = verses[index];
    Verse verse = favorite.verse;
    var size = fontSize - 2;

    return ListTile(
      contentPadding: EdgeInsets.only(top: 6, left: 16, right: 12),
      title: Text(
        verse.reference(),
        style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        verse.verseTxt,
        style: TextStyle(
          color: Colors.black,
          fontSize: size,
          fontWeight: FontWeight.normal,
        ),
      ),
      onLongPress: () => _onLongPress(favorite),
      onTap: () => goChapter(context, verse),
    );
  }

  _onLongPress(favorite) {
    bottomSheetCopyRemove(context, _favBloc, favorite, _isRemovable);
  }

  _onRefreshIndicator() {
    return _favBloc.favorites(type.index);
  }

  @override
  void dispose() {
    _booksBloc.dispose();
    _favBloc.dispose();
    super.dispose();
  }
}
