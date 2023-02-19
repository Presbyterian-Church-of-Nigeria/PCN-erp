import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../nav/nav.dart';
import 'hymndetail.dart';
import 'hymnsearch.dart';
//import 'package:firebase_core/firebase_core.dart' show Firebase;

class RchApp extends StatefulWidget {
  @override
  _RchAppState createState() => _RchAppState();
}

class _RchAppState extends State<RchApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.withOpacity(0.7),
          title: Text(" Presbyterian RCH "),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(
                    context: context,
                    delegate: HymnSearchDelegate(messages: Query));
              },
            ),
          ],
        ),
        drawer: Navbar(),
        body: FutureBuilder<QuerySnapshot>(
            future: FirebaseFirestore.instance
                .collection("rch").get(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.data == null) {
                return Center(child: CircularProgressIndicator());
              }
              var messages = snapshot.data.docs;
              return ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 9.0),
                itemCount: messages.length,
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  DocumentSnapshot rch = messages[index];
                  return Container(
                      child: Card(
                    elevation: 5.0,
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(rch['c0_id']),
                      ),
                      title: Text(rch['c1title']),
                      isThreeLine: true,
                      subtitle: Text(
                        rch['c4lyrics'],
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => HymnDetail(
                                rch['c0_id'], rch['c4lyrics']),
                          ),
                        );
                      },
                    ),
                  ));
                },
              );
            }));
  }
}
