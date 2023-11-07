import 'package:pcn_erp/bible/models/favorite.dart';
import 'package:pcn_erp/bible/models/verse.dart';
import 'base_dao.dart';




class FavoriteDao extends BaseDAO<Favorite> {
  @override
  String get tableName => "Favorites";
  String get bibleTable => "Bible";
  String get booksTable => "BooksList";

  @override
  Favorite fromMap(Map<String, dynamic> map) {
    return Favorite.fromMap(map);
  }

  Future<void> include(Favorite favorite) async {
    try {
      await save(favorite);
    } catch (error) {
      // Handle the error, e.g., log it or throw an exception
      print("Error when including favorite: $error");
    }
  }

  Future<void> remove(Favorite favorite) async {
    Verse verse = favorite.verse;
    String sql = "DELETE FROM $tableName WHERE "
        "Type=? AND Book=? AND Chapter=? AND Verse=?";
    await query(sql, [favorite.type, verse.bookID, verse.chapter, verse.verseID]);
  }

  Future<Favorite?> findOne(Favorite favorite) async {
    Verse verse = favorite.verse;
    String sql = "SELECT * FROM $tableName WHERE "
        "Type=? AND Book=? AND Chapter=? AND Verse=?";
    List<Favorite> list = await query(sql, [favorite.type, verse.bookID, verse.chapter, verse.verseID]);

    return list.isNotEmpty ? list.first : null;
  }

  Future<List<Favorite>> favorites(int type, String order) async {
    String sql = "SELECT * FROM $booksTable as L "
        "INNER JOIN $tableName as F ON (F.Book = L.Book) "
        "INNER JOIN $bibleTable as B "
        "ON (B.Book = F.Book "
        "AND B.Chapter = F.Chapter "
        "AND B.Verse = F.Verse) "
        "WHERE F.Type=? "
        "ORDER BY $order";
    return await query(sql, [type]);
  }
}
