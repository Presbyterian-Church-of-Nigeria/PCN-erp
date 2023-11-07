import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pcn_erp/nav/nav.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
//void main() async {
// runApp(MyApp());
//}

class Moments extends StatefulWidget {
  @override
  _Moments createState() => _Moments();
}

class _Moments extends State<Moments> {
  @override
  void initState() {
    super.initState();
//    download();
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: const Text('Moments in History'),
        ),
        drawer: Navbar(),
        body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection("moments")
                .snapshots()
                .asBroadcastStream(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              } else {
                var messages = snapshot.data?.docs;
                return ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 9.0),
                  itemCount: messages!.length,
                  separatorBuilder: (context, index) => Divider(),
                  itemBuilder: (context, index) {
                    DocumentSnapshot rch = messages[index];
                    return Container(
                      
                      child: ExpansionTileCard(
                        elevation: 5.0,
                        baseColor: Colors.deepPurple.shade400,
                        expandedColor: Colors.deepPurple.shade100,
                        // child: ListTile(
                        leading: CircleAvatar(
                              backgroundColor: Colors.white,

                          child: Text(
                            (rch.data() as Map<String, dynamic>)['year']?.toString() ?? '',  // Cast to Map and handle null
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                          ),



                          maxRadius: 32,
                        ),
                        title: Text(
                            (rch.data() as Map<String, dynamic>)['month']?.toString() ?? '',
                          style: TextStyle(fontSize: 17.5,color: Colors.white),
                        ),
                        children: [
                          Divider(
                            thickness: 1.0,
                            height: 1.0,
                          ),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 10.0),
                                child: Text(
                                    (rch.data() as Map<String, dynamic>)['event']?.toString() ?? '',
                                  style: TextStyle(fontSize: 18),
                                ),
                              )),
                        ],
                      ),
                    );
                  },
                );
              }
            })));
  }
}
