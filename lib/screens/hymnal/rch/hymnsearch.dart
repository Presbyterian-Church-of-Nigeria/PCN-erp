//import 'dart:math';

import 'package:flutter/material.dart';
//import 'Hymn.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'hymndetail.dart';

class HymnSearchDelegate extends SearchDelegate {
  final messages;

  //List<String> filterName = new List();

  HymnSearchDelegate({this.messages});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
          showSuggestions(context);
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.length < 1) {
      return Center(
        child: Text("Type Hymn Number or title"),
      );
    }

    //HymnManager manager = HymnManager();
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection("rch")
            .snapshots()
            .asBroadcastStream(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          } else {
            //Fetch Data here
            //var messages = snapshot.data.docs;
            print(snapshot.data);

            return ListView(
              children: [
                 ...snapshot.data.docs.where(
                  (QueryDocumentSnapshot element)=> element['c1title']
                .toString()
                .toLowerCase()
                .contains(query.toLowerCase())).map((QueryDocumentSnapshot data){

                 // final String title = data.get('c1title');
                  //final String c0_id = data['c0_id'];

                  return  ListTile(
                      leading: CircleAvatar(
                        child: Text(data['c0_id']),
                      ),
                      title: Text(data['c1title']),
                      isThreeLine: true,
                      subtitle: Text(
                        data['c4lyrics'],
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => HymnDetail(
                                data['c0_id'],  data['c4lyrics']),
                          ),
                        );
                      },
                    );

                  
                }),
                
              ...snapshot.data.docs.where(
                  (QueryDocumentSnapshot element)=> element['c0_id']
                .toString()
                .toLowerCase()
                .contains(query.toLowerCase())).map((QueryDocumentSnapshot data){

                 // final String title = data.get('c1title');
                  //final String c0_id = data['c0_id'];

                  return  ListTile(
                      leading: CircleAvatar(
                        child: Text(data['c0_id']),
                      ),
                      title: Text(data['c1title']),
                      isThreeLine: true,
                      subtitle: Text(
                        data['c4lyrics'],
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => HymnDetail(
                                data['c0_id'],  data['c4lyrics']),
                          ),
                        );
                      },
                    );
                }),
                 
            
              ],
            );
          }
         
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
               child:
               
                Text("Type Hymn Number or title"),
               
    );
  }
}
