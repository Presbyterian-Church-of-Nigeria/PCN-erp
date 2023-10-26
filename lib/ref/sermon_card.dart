// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MySermonCard extends StatelessWidget {
  final String sermonDetails;
  final String sermonPriest;
  final sermonImage;

  MySermonCard({
    required this.sermonDetails,
    required this.sermonPriest, this.sermonImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
               color: Color.fromARGB(255, 227, 227, 227),
                spreadRadius: 1.1,
                blurRadius:5,
              ),
            ],
            image: DecorationImage(
              image: AssetImage("assets/coomingsoon.jpg"),
                  
              fit: BoxFit.fill,
            ),
            //shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12),
            //color: Colors.grey[300],
            //borderRadius: BorderRadius.circular(10),
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
                            sermonDetails,
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            sermonPriest,
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
        ));
  }
}
