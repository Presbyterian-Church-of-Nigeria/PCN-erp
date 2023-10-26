import 'dart:convert';

import 'package:flutter/material.dart';

class KjvBible extends StatefulWidget {
  //const BiblePage({Key key}) : super(key: key);

  @override
  _KjvBibleState createState() => _KjvBibleState();
}

class _KjvBibleState extends State<KjvBible> {
  List? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Kjv Bible'),
        ),
        body: Center(
          child: FutureBuilder(
            future:
                DefaultAssetBundle.of(context).loadString('assets/bible.json'),
            builder: (context, snapshot) {
              // Decode the JSON
              var newData = json.decode(snapshot.data.toString());

              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 32, bottom: 32, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              InkWell(
                                //onTap: () {
                                //  Navigator.push(
                                //      context,
                                //      MaterialPageRoute(
                                //          builder: (_) => Welcome()));
                                //},
                                child: Text(
                                  //newData[index]['Book'],
                                  'Coming Soon',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                              ),
                              //Text(
                              //  newData[index][''],
                              //'Note Text',
                              //  style: TextStyle(color: Colors.grey.shade600),
                              // ),
                            ],
                          ),
                          //SizedBox(width: 20),
                          //Container(
                          // height: 50,
                          // width: 50,
                          // child: Image.asset(newData[index]['img']),
                          //)
                        ],
                      ),
                    ),
                  );
                },
                itemCount: newData == null ? 0 : newData.length,
              );
            },
          ),
        ));
  }
}
