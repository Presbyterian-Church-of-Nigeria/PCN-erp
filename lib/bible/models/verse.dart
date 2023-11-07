import 'dart:convert';

import 'package:pcn_erp/bible/models/entity.dart';

Verse verseFromJson(String str) => Verse.fromMap(json.decode(str));

String verseToJson(Verse data) => json.encode(data.toMap());

class Verse extends Entity {
  int testament;
  int bookID;
  int chapter;
  int verseID;

  String bookName;
  String verseTxt;

  Verse({
     required this.testament,
     required this.bookID,
     required this.chapter,
    required this.verseID,
    required this.verseTxt,
     required this.bookName,
  });

  factory Verse.fromMap(Map<String, dynamic> json) => Verse(
        testament: json["Testament"],
        bookID: json["Book"],
        chapter: json["Chapter"],
        verseID: json["Verse"],
        verseTxt: json["Scripture"],
        bookName: json["BookName"],
      );

  @override
  Map<String, dynamic> toMap() => {
        "Testament": testament,
        "Book": bookID,
        "Chapter": chapter,
        "Verse": verseID,
        "Scripture": verseTxt,
        "BookName": bookName,
      };

  String reference() {
    return '$bookName, $chapter:$verseID';
  }

  @override
  String toString() {
    return 'Verse {bookID: $bookID, bookName: $bookName, chapter: $chapter, verseID: $verseID, verseTxt: $verseTxt}';
  }
}
