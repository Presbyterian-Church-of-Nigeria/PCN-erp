import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:pcn_erp/screens/my_church/bb.dart';
import 'package:pcn_erp/screens/my_church/cgit.dart';
import 'package:pcn_erp/screens/my_church/gloriae_dei.dart';
import 'package:pcn_erp/screens/my_church/hugh_goldie.dart';
import 'package:pcn_erp/screens/my_church/mca.dart';
import 'package:pcn_erp/screens/my_church/parish.dart';
import 'package:pcn_erp/screens/my_church/pctm.dart';
import 'package:pcn_erp/screens/my_church/pypan.dart';
import 'package:pcn_erp/screens/my_church/women_guild.dart';

/// Represents Homepage for Navigation
class Mychurch extends StatefulWidget {
  @override
  _Mychurch createState() => _Mychurch();
}

class _Mychurch extends State<Mychurch> {
  //final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Church'),
        ),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView(
                children: [
                  InkWell(
                     onTap: () {
                      Navigator.push(context,
                           MaterialPageRoute(builder: (context) => Parish()));
                     },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFbb6b25)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                    'assets/pcnlocation.jpg',
                                  )))),
                          Text(
                            "Parish Directory",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                     onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mca()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFbb2925) ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                    'assets/mcalogo.png',
                                  )))),
                          Text(
                            "MCA",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                     onTap: () {
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context) => WomenGuild()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF176D71) ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                    'assets/womenguild.jpg',
                                  )))),
                          Text(
                            "WOMEN GUILD",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                     onTap: () {
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context) => Pypan()));
                     },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 100,
                              width: 130,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('assets/pypan.jpg')))),
                          Text(
                            "PYPAN",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                     onTap: () {
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context) => Cgit()));
                     },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF1d9325)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                    'assets/cgit.jpg',
                                  )))),
                          Text(
                            "CGIT",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                     onTap: () {
                       Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoyB()));
                     },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffbfe70f)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/bb.jpeg',
                                      )))),
                          // child:
                          // SizedBox(
                          // width: 250.0,
                          //height: 80.0,
                          // child:


                          Text(
                            "The Boys Brigade",
                            // "Theological College",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 17.5),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                     onTap: () {
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context) => GloriaeDei()));
                     },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFac6485)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/euptc.jpeg',
                                      )))),
                         // child:
                         // SizedBox(
                           // width: 250.0,
                            //height: 80.0,
                           // child:
                      DefaultTextStyle(
                              style: const TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Agne',
                                  color: Colors.white
                              ),
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  TyperAnimatedText('Essien Ukpabio Presybterian Theological College',
                                  textAlign: TextAlign.center),
                                  //TypewriterAnimatedText(' Coming Soon'),
                                ],
                              ),
                            ),
                         // ),
                         // Text(
                           // "Essien Ukpabio Presybterian "
                           // "Theological College",
                           // textAlign: TextAlign.center,
                           // style: TextStyle(color: Colors.white, fontSize: 17.5),
                         // )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                     onTap: () {
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context) => Goldie()));
                     },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffbfe70f)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/goldi.jpeg',
                                      )))),
                          // child:
                          // SizedBox(
                          // width: 250.0,
                          //height: 80.0,
                          // child:
                          DefaultTextStyle(
                            style: const TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Agne',
                                color: Colors.white
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText ("Hugh Goldie Lay/Theological Training Institution",
                                textAlign: TextAlign.center)
                              ,
                                //TypewriterAnimatedText(' Coming Soon'),
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),

                  InkWell(
                     onTap: () {
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context) => Pctm()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffbfe70f)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/pctm.jpeg',
                                      )))),
                          // child:
                          // SizedBox(
                          // width: 250.0,
                          //height: 80.0,
                          // child:


                          Text(
                            "Children & Teens Ministry",
                            // "Theological College",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 17.5),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //mainAxisExtent: 70,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
              )),
        ));
  }
}
