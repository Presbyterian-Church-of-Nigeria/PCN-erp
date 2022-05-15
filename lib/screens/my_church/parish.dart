import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pcn_erp/nav/nav.dart';
//void main() async {
// runApp(MyApp());
//}

class Parish extends StatefulWidget {
  @override
  _Parish createState() => _Parish();
}

class _Parish extends State<Parish> {
  @override
  void initState() {
    super.initState();
//    download();
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: const Text('Parish Directory'),
        ),
        drawer: Navbar(),
        body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection("parish").snapshots(),
            //.asBroadcastStream(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              } else {
                var messages = snapshot.data.docs;
               // Map<String, dynamic> messages = snapshot.data.docs as Map<String, dynamic>;

                return ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 9.0),
                  itemCount: messages.length,
                  separatorBuilder: (context, index) => Divider(),
                  itemBuilder: (context, index) {
                    //DocumentSnapshot rch = messages[index];
                    return Container(
                        child: Card(
                      elevation: 5.0,
                      child: ListTile(
                        

                        leading: Text("Coming Soon",
                         // rch?.data()['synod'] ?? "",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                       // title: Text("Parishes"),

                        // maxRadius: 32,

                        onTap: () {
                          // Navigator.push(
                          //context,
                          //MaterialPageRoute(
                          // builder: (BuildContext context) => DateDetail(rch.data()['date']  ,rch.data()['activity'], rch.data()['date2'], rch.data()['activity2'],rch.data()['date3'],rch.data()['activity3'],rch.data()['date4'],rch.data()['activity4'],rch.data()['week']),
                          // ),
                          //);
                        },
                      ),
                    ));
                  },
                );
              }
            })));
  }
}
