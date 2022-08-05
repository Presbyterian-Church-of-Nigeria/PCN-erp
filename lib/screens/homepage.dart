//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:flutter/widgets.dart';
import 'package:pcn_erp/nav/nav.dart';
//import 'package:pcn_erp/screens/bible_study/bible_study.dart';

import '../nav/nav.dart';
import 'package:pcn_erp/util/first_half.dart';
import 'package:pcn_erp/util/second_half.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(
                FontAwesomeIcons.bars,
                color: Colors.deepPurple,
              ),
            );
            
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                color: Colors.grey[200],
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for anything',
                    prefixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple.shade200),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            //The First Half Column
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: [
                  FirstHalf(),
                  SizedBox(height: 20),
                  //Second Half of Column
                  SecondHalf(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.deepPurple,
        currentIndex: _currentIndex,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined), label: ''),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.church_outlined,
            ),
            label: '',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
