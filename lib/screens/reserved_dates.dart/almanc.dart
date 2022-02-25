import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pcn_erp/nav/nav.dart';
import 'package:pcn_erp/screens/reserved_dates.dart/date_details.dart';
//void main() async {
// runApp(MyApp());
//}

class Almanc extends StatefulWidget {
  @override
  _Almanc createState() => _Almanc();
}

class _Almanc extends State<Almanc> {
  @override
  void initState() {
    super.initState();
//    download();
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: const Text('Reserved Date 2022'),
        ),
        drawer: Navbar(),
        body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection("date2022")

                .snapshots()
                .asBroadcastStream(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              } else {
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
                          child: Text("Week" + rch?.data()['week']),
                          maxRadius: 42,
                        ),
                        title: Text("PCN Events"),
                        //isThreeLine: true,
                        //subtitle: Text("")
                        
                        onTap: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => DateDetail(rch.data()['date']  ,rch.data()['activity'], rch.data()['date2'], rch.data()['activity2'],rch.data()['date3'],rch.data()['activity3'],rch.data()['date4'],rch.data()['activity4'],rch.data()['week']),
                          ),
                        );
                        },
                      ),
                    ));
                  },
                );
              }
            })));
  }
}
