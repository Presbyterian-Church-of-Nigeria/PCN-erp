import 'dart:async';
import 'dart:math';


import 'package:pcn_erp/bible/models/dao/favorites_dao.dart';
import 'package:pcn_erp/bible/models/favorite.dart';
import 'package:pcn_erp/bible/models/verse.dart';
import 'package:pcn_erp/bible/services/base_bloc.dart';
import 'package:pcn_erp/bible/utils/constants.dart';

class FavoritesBloc extends BaseBloc<List<Favorite>> {
  final FavoriteDao _dao = FavoriteDao();

  void include(Favorite favorite) async {
    _dao.include(favorite);
    }

  void remove(Favorite favorite) async {
    _dao.remove(favorite);
      favorites(favorite.type, order: '');
  }

  Future<List<Favorite>?> favorites(int type, {required String order}) async {
    try {
      order = order ?? "Book, Chapter, Verse";
      List<Favorite> favorites = await _dao.favorites(type, order);
      add(favorites);
      return favorites;
    } catch (e) {
      addError(e);
      return null;
    }
  }

  Future<bool> isMarked(Favorite favorite) async {
    Favorite? fav = await _dao.findOne(favorite);
    return fav != null;
  }

  Future<Verse?> randomVerse() async {
    try {
      int type = FavoriteType.OTHERS.index;
      List<Favorite>? hist = await favorites(type, order: '');

     // if (hist == null) return null;

      var rng = new Random();
      int rndId = rng.nextInt(hist!.length);

      return hist.elementAt(rndId).verse;
    } catch (_) {
      return null;
    }
  }

  Future<Favorite?> history() async {
    try {
      int type = FavoriteType.HISTORY.index;
      List<Favorite>? hist = await favorites(type, order: "Favorites_Id");
      return (hist != null) ? hist.last : null;
    } catch (_) {
      return null;
    }
  }
}
