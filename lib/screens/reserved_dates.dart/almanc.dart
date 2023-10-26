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
          backgroundColor: Colors.deepPurple.withOpacity(0.7),
          title: const Text(
            'Reserved Date 2022',
            style: TextStyle(
              fontFamily: 'Montserrat',
            ),
          ),
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
                var messages = snapshot.data?.docs;
                return ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 9.0),
                  itemCount: messages!.length,
                  separatorBuilder: (context, index) => Divider(),
                  itemBuilder: (context, index) {
                    DocumentSnapshot rch = messages[index];
                    return Container(
                        child: Card(
                          
                          color: Colors.deepPurple.shade400,
                      elevation: 5.0,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text("Week" + (rch?.data() as Map<String, dynamic>)?['week'] ?? '',
                            style: TextStyle(color: Colors.black),),
                          maxRadius: 42,
                        ),
                        title: Text(
                          "PCN Events",
                          style: TextStyle(
                            fontFamily: 'Montserrat',color: Colors.white
                          ),
                        ),
                        //isThreeLine: true,
                        //subtitle: Text("")

                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => DateDetail(
                                  (rch.data() as Map<String, dynamic>)?['date']?.toString() ?? '',
                                  (rch.data() as Map<String, dynamic>)?['activity']?.toString() ?? '',
                                  (rch.data() as Map<String, dynamic>)?['date1']?.toString()?? '',
                                  (rch.data() as Map<String, dynamic>)?['activity1']?.toString()?? '',
                                  (rch.data() as Map<String, dynamic>)?['date2']?.toString()?? '',
                                  (rch.data() as Map<String, dynamic>)?['activity2']?.toString() ?? '',
                                  (rch.data() as Map<String, dynamic>)?['date3']?.toString() ?? '',
                                  (rch.data() as Map<String, dynamic>)?['activity3']?.toString() ?? '',
                                  (rch.data() as Map<String, dynamic>)?['week']?.toString()?? ''),
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
