// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pcn_erp/ref/event_card.dart';
import 'package:pcn_erp/ref/sermon_card.dart';

class FirstHalf extends StatefulWidget {
  const FirstHalf({required Key key}) : super(key: key);

  @override
  State<FirstHalf> createState() => _FirstHalfState();
}

class _FirstHalfState extends State<FirstHalf> {
  final List eventName = [
    'Special invitation',
    'Installation Service',
    'Worlds Aid Week 2022',
  ];

  final List<String> _eventImage = ['assets/in.jpeg',
  'assets/inv.jpeg',
  'assets/aids.jpeg'];



  final List<String> briefText = [
    'Sunday 11th December 2022',
    'The PCN, Duke Town Cathedral',
    '28th Nov - 4th Dec. 2022',
  ];

  final List sermonName = [
    'Working Out The Word',
    'The Supernatural Life',
    'After the third day',
  ];

  final List priestName = [
    'His Eminence E. Akpanika PhD',
    'Most Rev Dr Miracle Ajah',
    'Rt. Rev. Aniefiok Victor Ekop',
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

                  imageDetails: _eventImage[index],
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
