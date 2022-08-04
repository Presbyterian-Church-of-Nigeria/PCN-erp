// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pcn_erp/ref/event_card.dart';
import 'package:pcn_erp/ref/sermon_card.dart';

class FirstHalf extends StatefulWidget {
  const FirstHalf({Key key}) : super(key: key);

  @override
  State<FirstHalf> createState() => _FirstHalfState();
}

class _FirstHalfState extends State<FirstHalf> {
  final List eventName = [
    'Prelates Send Forth',
    'Election of New Prilate',
    'Electon Date',
  ];

  final List briefText = [
    'Click to see more',
    'Click to see more',
    'Click to see more',
  ];

  final List sermonName = [
    'Working Out The Word',
    'The Supernatural Life',
    'After the third day',
  ];

  final List priestName = [
    'Rev. Etiowow Jackson',
    'Rev. Uche Dan Okafor',
    'Rev John Anaga',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Upcoming Church Events',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.deepPurple,
                    fontSize: 15),
              ),
              Text(
                'see all',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.deepPurple,
                    fontSize: 13),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        // The Next Row
        Container(
          height: 170,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: eventName.length,
              itemBuilder: ((context, index) {
                return MyEventCard(
                  eventDetails: eventName[index],
                  briefDetails: briefText[index],
                );
              })),
        ),
        SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Powerful Sermons',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.deepPurple,
                    fontSize: 15),
              ),
              Text(
                'see all',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.deepPurple,
                    fontSize: 13),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Container(
          height: 170,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sermonName.length,
              itemBuilder: ((context, index) {
                return MySermonCard(
                  sermonDetails: sermonName[index],
                  sermonPriest: priestName[index],
                );
              })),
        ),
      ],
    );
  }
}