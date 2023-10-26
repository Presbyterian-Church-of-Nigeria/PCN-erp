import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:flutter/widgets.dart';
import 'package:pcn_erp/bible/main.dart';
import 'package:pcn_erp/screens/reserved_dates.dart/almanc.dart';
import 'package:pcn_erp/screens/blue_book.dart';
import 'package:pcn_erp/screens/book_of_service.dart';
import 'package:pcn_erp/screens/church_leadership.dart';
import 'package:pcn_erp/screens/homepage.dart';
import 'package:pcn_erp/screens/hymnal/hymn_home.dart';
import 'package:pcn_erp/screens/pnp.dart';
import 'package:pcn_erp/screens/thankpage.dart';
import 'package:share_plus/share_plus.dart';
import 'package:pcn_erp/bible/utils/navigator.dart';

class Navbar extends StatefulWidget {
  const Navbar({key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.only(left: 12,right: 12,top: 20.0, bottom: 15.0),
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage("assets/pcnLogo.png"), fit: BoxFit.contain)),
          child: Container(),
        ),
        ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home,
            color: Colors.deepPurple,),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage(key: Key('homePageKey'),)));
            }),
        ListTile(
          title: Text("Church Leadership"),
          leading: Icon(Icons.person,color: Colors.deepPurple,),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ChurchLeaders()));
            // _displayFavoritesPage(context);
          },
        ),

        ListTile(
            title: Text("Hymnal"),
            leading: Icon(Icons.music_note_outlined, color: Colors.deepPurple,),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HymnPage(key: Key('hymnPage'),)));
              // _displayLanguagesPage(context);
            }),
        ListTile(
            title: Text("Bible"),
            leading: Icon(FontAwesomeIcons.bookBible,color: Colors.deepPurple,),
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
            leading: Icon(Icons.bookmark,color: Colors.deepPurple,),
            onTap: (() {
              Navigator.pop(context);
              push(context, Pnp());
              // _displayLanguagesPage(context);
            })),
        ListTile(
            title: Text("The Blue Book"),
            leading: Icon(Icons.history_edu_outlined,color: Colors.deepPurple,),
            onTap: (() {
              Navigator.pop(context);
              push(context, Bluebook());
              // _displayLanguagesPage(context);
            })),
        ListTile(
            title: Text("Book of Service"),
            leading: Icon(Icons.auto_stories,color: Colors.deepPurple,),
            onTap: (() {
              Navigator.pop(context);
              push(context, BookService());
              // _displayLanguagesPage(context);
            })),
        ListTile(
            title: Text("Approved Dates 2022"),
            leading: Icon(FontAwesomeIcons.calendarWeek,color: Colors.deepPurple,),
            onTap: (() {
              Navigator.pop(context);
              push(context, Almanc());
              // _displayLanguagesPage(context);
            })),
        ListTile(
            title: Text("Appreciation"),
            leading: Icon(FontAwesomeIcons.dev,color: Colors.deepPurple,),
            onTap: (() {
              Navigator.pop(context);
              push(context, Thanks());
              // _displayLanguagesPage(context);
            })),

        ListTile(
          leading: Icon(Icons.share, color:Colors.deepPurple,),
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

  // Ensure that the context has a render box
  final RenderBox? box = context.findRenderObject() as RenderBox?;

  if (box != null) {
    final text = "I am Using PCN erp app "
        "Download it !\n"
        "https://play.google.com/store/apps/details?id=com.pcn_erp.main";

    Share.share(
      text,
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
    );
  } else {
    // Handle the case where context does not have a render box
    print("Error: Context does not have a RenderBox");
  }
}