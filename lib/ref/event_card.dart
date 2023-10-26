// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutable//s

import 'package:flutter/material.dart';
import 'package:pcn_erp/screens/upcoming.dart';

class MyEventCard extends StatelessWidget {
  final String eventDetails;
  final String briefDetails;
  final String imageDetails;

  MyEventCard({
     required this.eventDetails,
     required this.briefDetails,
     required this.imageDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
            onTap: () async {
              await showDialog(
                  context: context,
                  builder: (_) => ImageDialog()
              );
            },
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 227, 227, 227),
                spreadRadius: 1.1,
                blurRadius: 5,
              ),
            ],

            image: DecorationImage(
              image: AssetImage(imageDetails),
                  
              fit: BoxFit.fill,
            ),
            //shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            eventDetails,
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            briefDetails,
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )));
  }
}
