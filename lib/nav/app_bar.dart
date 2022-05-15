import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';

class AppBa extends StatefulWidget {

  @override
  _AppBaState createState() => _AppBaState();
}

class _AppBaState extends State<AppBa> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      //backgroundColor: Colors.transparent,

      title: Text(
        '',
        textAlign: TextAlign.center,
        style:
        TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),

      centerTitle: true,
      flexibleSpace: ClipRRect(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50)),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/royalph.png'),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                        Colors.blue[100].withOpacity(0.8),
                        BlendMode.darken))),
          )),
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50))),
      actions: <Widget>[
        // Using Stack to show Notification Badge
        new Stack(
          children: <Widget>[
            new IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    counter = 0;
                  });
                }),
            counter != 0
                ? new Positioned(
              right: 11,
              top: 11,
              child: new Container(
                padding: EdgeInsets.all(2),
                decoration: new BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                constraints: BoxConstraints(
                  minWidth: 14,
                  minHeight: 14,
                ),
                child: Text(
                  '$counter',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
                : new Container()
          ],
        ),
      ],
    );
  }
}
