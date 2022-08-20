import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pcn_erp/bible/pages/home_page.dart';

import 'package:pcn_erp/screens/bible_study/biblestudy_home.dart';
import 'package:pcn_erp/screens/blue_book.dart';
import 'package:pcn_erp/screens/book_of_service.dart';
import 'package:pcn_erp/screens/church_leadership.dart';
import 'package:pcn_erp/screens/hymnal/hymn_home.dart';
import 'package:pcn_erp/screens/moments.dart';
import 'package:pcn_erp/screens/my_church/mychurch.dart';
import 'package:pcn_erp/screens/pnp.dart';
import 'package:pcn_erp/screens/reserved_dates.dart/almanc.dart';

class SecondHalf extends StatelessWidget {
  const SecondHalf({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        
        height: MediaQuery.of(context).size.height * 1.4,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BibleStudyHome()));
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 27,
                            backgroundColor: Colors.deepPurple,
                            child: Icon(
                              FontAwesomeIcons.bookBible,
                              color: Colors.white,
                              size: 36.0,
                            ),
                            //backgroundImage: AssetImage( 'assets/rchhymn.jpg',),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Bible Study Outline',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontFamily: 'Montserrat-Regular',
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HymnPage()));
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 27,
                              backgroundColor: Colors.deepPurple,
                              child: Icon(
                                FontAwesomeIcons.music,
                                color: Colors.white,
                                size: 36.0,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Revised Church Hymnary (RCH)',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontFamily: 'Montserrat-Regular',
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Pnp()));
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 27,
                              backgroundColor: Colors.deepPurple,
                              child: Icon(
                                FontAwesomeIcons.bookOpen,
                                color: Colors.white,
                                size: 36.0,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Practice & Procedure (PnP)',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontFamily: 'Montserrat-Regular',
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => BiblePage()));
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 27,
                              backgroundColor: Colors.deepPurple,
                              child: Icon(
                                FontAwesomeIcons.bookBible,
                                color: Colors.white,
                                size: 36.0,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Bible',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontFamily: 'Montserrat-Regular',
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
               SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Bluebook()));
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 27,
                              backgroundColor: Colors.deepPurple,
                              child: Icon(
                                FontAwesomeIcons.bookOpenReader,
                                color: Colors.white,
                                size: 36.0,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Blue Book',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontFamily: 'Montserrat-Regular',
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
               InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => BookService()));
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 27,
                              backgroundColor: Colors.deepPurple,
                              child: Icon(
                                FontAwesomeIcons.bookOpenReader,
                                color: Colors.white,
                                size: 36.0,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Book of Service',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontFamily: 'Montserrat-Regular',
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Mychurch()));
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 26,
                              backgroundColor: Colors.deepPurple,
                              child: Icon(
                                FontAwesomeIcons.church,
                                color: Colors.white,
                                size: 36.0,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'My Church',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontFamily: 'Montserrat-Regular',
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
               SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ChurchLeaders()));
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 27,
                              backgroundColor: Colors.deepPurple,
                              child: Icon(
                                FontAwesomeIcons.userTie,
                                color: Colors.white,
                                size: 36.0,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Church leadership',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontFamily: 'Montserrat-Regular',
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Almanc()));
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 27,
                              backgroundColor: Colors.deepPurple,
                              child: Icon(
                                FontAwesomeIcons.calendarCheck,
                                color: Colors.white,
                                size: 36.0,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Church Calender',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontFamily: 'Montserrat-Regular',
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
               SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Moments()));
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 27,
                              backgroundColor: Colors.deepPurple,
                              child: Icon(
                                FontAwesomeIcons.calendarWeek,
                                color: Colors.white,
                                size: 36.0,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Moments in History',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontFamily: 'Montserrat-Regular',
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              
            ],
          ),
        ));
  }
}
