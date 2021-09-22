import 'package:flutter/material.dart';
import 'package:pcn_erp/screens/home.dart';
//import 'package:pcn_erp/screens/hymnal/rch/hymnlist.dart';

import '../screens/hymnal/hymn_home.dart';

const String homeRoute = '/';

const String hymnRoute = '/hymn';
const String pcCv = '/pcCV';

Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  homeRoute: (BuildContext context) => MyHomePage(),
  hymnRoute: (BuildContext context) => HymnPage(),
    
        // When navigating to the "/" route, build the FirstScreen widget.
       
   
  //hymnRoute: (BuildContext context) => PcHome(),
};
