import 'dart:convert';
import 'package:pcn_erp/bible/models/verse.dart';
import 'package:pcn_erp/bible/utils/constants.dart';

import 'entity.dart';


  Favorite favoritesFromJson(String str) => Favorite.fromMap(json.decode(str));

  String favoritesToJson(Favorite data) => json.encode(data.toMap());



class Favorite implements Entity {


 // class Favorite {
  int type;
  Verse verse;

  Favorite.of(Verse verse)
      : type = FavoriteType.MINE.index,
  verse = verse;

  Favorite.marked({required int bookID, required int chapter})
      : type = FavoriteType.MARKED.index,
  verse = Verse(bookID: bookID, chapter: chapter, verseID: 1, testament: 1, verseTxt: '', bookName: '');

  Favorite({
  required this.type,
  required this.verse,
  });

  factory Favorite.fromMap(Map<String, dynamic> json) {
  return Favorite(
  type: json["Type"],
  verse: Verse.fromMap(json),
  );
  }

  Map<String, dynamic> toMap() {
  return {
  "Type": type,
  "Book": verse.bookID,
  "Chapter": verse.chapter,
  "Verse": verse.verseID,
  };
  }

  @override
  String toString() {
  return 'Favorite{type: $type, ${verse.toString()}}';
  }
  }
