import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Hymn.g.dart';

@JsonSerializable()
class Hymn{
  final String c1title;
  final String c0Id;
  final String c4lyrics;

  Hymn(this.c1title,this.c0Id, this.c4lyrics);

 factory Hymn.fromJson(Map<String,dynamic> json) =>
       _$HymnFromJson(json);

static Future<List<Hymn>> browse({query}) async {
        String content = await rootBundle.loadString('data/hymncom.json');
        
        
        List collection = json.decode(content);

        Iterable<Hymn> _hymns = 
        collection.map((_) => Hymn.fromJson(_));

        if (query !=null && query.isNotEmpty ) {
           _hymns = _hymns.where((message) => message.c0Id.toLowerCase().contains(query) || message.c1title.toLowerCase().contains(query) ,);
        }

       return _hymns.toList(); 
       
      }

}


