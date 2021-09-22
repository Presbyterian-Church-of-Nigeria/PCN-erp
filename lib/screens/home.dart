//import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:pcn_erp/routes/routes.dart';
import 'package:pcn_erp/nav/nav.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  StaggeredTile.extent(1, 150.0),
  StaggeredTile.extent(1, 150.0),
  StaggeredTile.extent(1, 150.0),
  StaggeredTile.extent(1, 150.0),
  StaggeredTile.extent(1, 150.0),
  StaggeredTile.extent(1, 150.0),
  StaggeredTile.extent(1, 150.0),
  StaggeredTile.extent(1, 150.0),

];

List<Widget> _tiles = const <Widget>[
  const MyItems(Icons.supervised_user_circle, "The Moderator", 0xff42a5f5, "/first"),
  const MyItems( Icons.ac_unit,"PC of GA", 0xff42a5f5, "/second"),
  const MyItems( Icons.auto_stories,"Hymnal", 0xffdd8b58, "/hymn"),
  const MyItems( Icons.bookmark," Blue Book", 0xff92a84f, "/second"),
  const MyItems( Icons.open_in_browser,"P &P", 0xffc7a929, "/second"),
  const MyItems( Icons.calendar_today,"Dates", 0xffec7ba6, "/second"),
  const MyItems( Icons.auto_stories,"Bible", 0xffbd9b46, "/second"),
  const MyItems( Icons.location_on,"My Church", 0xff42a5f5, "/second"),






  //const MyItems(icon, heading, color, routeName)
  const _Tile(Colors.green, Icons.auto_stories),
  const _Tile(Colors.amber, Icons.panorama_wide_angle),
];
class MyHomePage extends StatefulWidget {
  //List<Item> ImageList;
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("PCN - ERP"),
          centerTitle: true,
          
        ),
          drawer: Navbar(),
         
        body: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: StaggeredGridView.count(
              crossAxisCount: 2,
              staggeredTiles: _staggeredTiles,
              children: _tiles,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              padding: const EdgeInsets.all(4.0),
            )));
  }
}

class _Tile extends StatelessWidget {
  const _Tile(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class MyItems extends StatelessWidget {
  const MyItems(this.icon,
   this.heading, //this.pic,
   this.color, this.routeName);

  final int color;
  //final Image pic;
  final IconData icon;
  final String heading;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 12.0,
      shadowColor: Color(0xff2962ff),
      borderRadius: BorderRadius.circular(15.0),
      child: Center(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //Text here
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            heading,
                            style: TextStyle(
                              color: new Color(color),
                              fontSize: 18.0,
                            ),
                          ),
                        ), //text

                        //icon
                        Material(
                          color: new Color(color),
                          borderRadius: BorderRadius.circular(24.0),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: IconButton(
                              icon: Icon(icon),
                              iconSize: 20,
                              color: Colors.white,
                              onPressed: () {
                                Navigator.pushNamed(context, routeName);
                              },
                            ),
                          ),
                          
                        ),
                      ],
                    ),
                  ]))),
    );
  }
}
