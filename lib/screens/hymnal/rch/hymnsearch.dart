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
        stream: FirebaseFirestore.instance.collection("rch").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return CircularProgressIndicator();
          }
          var messages = snapshot.data.docs;
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 9.0),
            itemCount: messages.length,
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              DocumentSnapshot rch = messages[index];
              return Card(
                elevation: 5.0,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(rch.data()['c0_id']),
                  ),
                  title: Text(rch.data()['c1title']),
                  isThreeLine: true,
                  subtitle: Text(
                    rch.data()['c4lyrics'],
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => HymnDetail(
                            rch.data()['c0_id'], rch.data()['c4lyrics']),
                      ),
                    );
                  },
                ),
              );
            },
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
