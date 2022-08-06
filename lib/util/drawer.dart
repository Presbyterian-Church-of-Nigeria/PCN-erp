// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pcn_erp/bible/main.dart';
import 'package:pcn_erp/bible/utils/navigator.dart';
import 'package:pcn_erp/screens/blue_book.dart';
import 'package:pcn_erp/screens/book_of_service.dart';
import 'package:pcn_erp/screens/church_leadership.dart';
import 'package:pcn_erp/screens/homepage.dart';
import 'package:pcn_erp/screens/hymnal/hymn_home.dart';
import 'package:pcn_erp/screens/pnp.dart';
import 'package:pcn_erp/screens/reserved_dates.dart/almanc.dart';
import 'package:pcn_erp/screens/thankpage.dart';
import 'package:share/share.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.deepPurple.shade400.withOpacity(0.5),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  //color: Colors.deepPurple.shade400.withOpacity(0.9),
                  image: DecorationImage(
                image: AssetImage("assets/pcnLogo.png"),
                fit: BoxFit.fill,
                scale: 0.5,
              )),
              child: null,
            ),
            Divider(),
            ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }),
            ListTile(
              title: Text("Church Leadership"),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChurchLeaders()));
                // _displayFavoritesPage(context);
              },
            ),

            ListTile(
                title: Text("Hymnal"),
                leading: Icon(Icons.menu_book),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HymnPage()));
                  // _displayLanguagesPage(context);
                }),
            ListTile(
                title: Text("Bible"),
                leading: Icon(Icons.auto_stories),
                onTap: (() {
                  Navigator.pop(context);
                  push(context, MyBible());
                })),
            //onTap: () {
            // Navigator.pop(context, MaterialPageRoute(builder: (context)=> MyBible()));
            // _displayLanguagesPage(context);
            //}),
            ListTile(
                title: Text("Practice & Procedure"),
                leading: Icon(Icons.bookmark),
                onTap: (() {
                  Navigator.pop(context);
                  push(context, Pnp());
                  // _displayLanguagesPage(context);
                })),
            ListTile(
                title: Text("The Blue Book"),
                leading: Icon(Icons.history_edu_outlined),
                onTap: (() {
                  Navigator.pop(context);
                  push(context, Bluebook());
                  // _displayLanguagesPage(context);
                })),
            ListTile(
                title: Text("Book of Service"),
                leading: Icon(Icons.auto_stories),
                onTap: (() {
                  Navigator.pop(context);
                  push(context, BookService());
                  // _displayLanguagesPage(context);
                })),
            ListTile(
                title: Text("Church Calender"),
                leading: Icon(Icons.calendar_today),
                onTap: (() {
                  Navigator.pop(context);
                  push(context, Almanc());
                  // _displayLanguagesPage(context);
                })),
            ListTile(
                title: Text("Appreciation"),
                leading: Icon(Icons.live_help_outlined),
                onTap: (() {
                  Navigator.pop(context);
                  push(context, Thanks());
                  // _displayLanguagesPage(context);
                })),

            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
              subtitle: Text("Share with family and friends"),
              onTap: () => _onShareClick(context),
            ),
          ],
        ));
  }
}

_onShareClick(BuildContext context) {
  Navigator.pop(context);
  final text = "I am Using PCN erp app "
      "Download it !\n"
      "https://play.google.com/store/apps/details?id=com.pcn_erp.main";
  final RenderBox box = context.findRenderObject();
  Share.share(
    text,
    sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
  );
}
