//import 'package:animated_text_kit/animated_text_kit.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
//import 'package:pcn_erp/bible/utils/constants.dart';
import 'package:pcn_erp/nav/nav.dart';
//import 'package:expansion_tile_card/expansion_tile_card.dart';

class Pypan extends StatefulWidget {
  //const Pypan({Key? key}) : super(key: key);

  @override
  _PypanState createState() => _PypanState();
}

class _PypanState extends State<Pypan> with TickerProviderStateMixin {
  //static const spacer = 5.0;
 // static const size = fontSize - 0.2;

  @override
  Widget build(BuildContext context) {
    //TabController _tabcontroller = TabController(length: 4, vsync: this);

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          //backgroundColor: Colors.transparent,

          title: Text(
            'PSF',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),

          centerTitle: true,
          flexibleSpace: ClipRRect(
            //
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/pypan.png'),
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5), BlendMode.darken))),
              )),
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50))),
          actions: <Widget>[
            // Using Stack to show Notification Badge
          ],
        ),

        //extendBodyBehindAppBar: true,

        drawer: Navbar(),
      
        body: Center(
          heightFactor: 2.0,
            // DocumentSnapshot rch = messages[index];
            child: Card(
                elevation: 20,
                color: Colors.white24,
                //widthFactor: 20,
                //heightFactor: 20,
                child: SizedBox(
                  width: 250.0,
                  // height: 80.0,
                  child: DefaultTextStyle(
                    style: const TextStyle(
                        fontSize: 35.0,
                        fontFamily: 'Montserrat-Regular',
                        color: Colors.black),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                            'Pypan Profile'),
                        TypewriterAnimatedText(' Coming Soon'),
                      ],
                    ),
                  ),
                ))));
  }
}


