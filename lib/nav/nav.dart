import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pcn_erp/screens/homepage.dart';
import 'package:pcn_erp/screens/hymnal/hymn_home.dart';
import 'package:pcn_erp/screens/moderator.dart';
import 'package:pcn_erp/screens/pc_ga.dart';

 class Navbar extends StatefulWidget {
   const Navbar({ key }) : super(key: key);
 
   @override
   _NavbarState createState() => _NavbarState();
 }
 
 class _NavbarState extends State<Navbar> {
   @override
   Widget build(BuildContext context) {
     return  Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/pcnlogo1.jpg"),
                      fit: BoxFit.cover)),
              child: Container(),
            ),
            ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage()));
                }),
            ListTile(
              title: Text("Moderator of General Assembly"),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Mod()));
                // _displayFavoritesPage(context);
              },
            ),
            ListTile(
                title: Text("PC of General Assembly"),
                leading: Icon(Icons.person),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PcGa()));
                  // _displayLanguagesPage(context);
                }),
            ListTile(
                title: Text("Hymnal"),
                leading: Icon(Icons.menu_book),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HymnPage()));
                  // _displayLanguagesPage(context);
                }),
            ListTile(
                title: Text("Bible"),
                leading: Icon(Icons.auto_stories),
                onTap: () {
                  Navigator.pop(context, MaterialPageRoute(builder: (context)=> Homepage()));
                  // _displayLanguagesPage(context);
                }),
            ListTile(
                title: Text("Practice & Procedure"),
                leading: Icon(Icons.bookmark),
                onTap: () {
                  Navigator.pop(context, MaterialPageRoute(builder: (context)=> Homepage()));
                  // _displayLanguagesPage(context);
                }),
            ListTile(
                title: Text("The Blue Book"),
                leading: Icon(Icons.bookmark),
                onTap: () {
                  Navigator.pop(context, MaterialPageRoute(builder: (context)=> Homepage()));
                  // _displayLanguagesPage(context);
                }),
            ListTile(
                title: Text("Approved Dates 2021"),
                leading: Icon(Icons.calendar_today),
                onTap: () {
                  Navigator.pop(context, MaterialPageRoute(builder: (context)=> Homepage()));
                  // _displayLanguagesPage(context);
                }),
          
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
                //_displaySettingsPage(context);
              },
            ),
          ],
        ));
   }
 }
 