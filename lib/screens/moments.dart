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
                var messages = snapshot.data.docs;
                return ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 9.0),
                  itemCount: messages.length,
                  separatorBuilder: (context, index) => Divider(),
                  itemBuilder: (context, index) {
                    DocumentSnapshot rch = messages[index];
                    return Container(
                        child:
                        ExpansionTileCard(
                      elevation: 5.0,
                     baseColor: Colors.cyan[50],
                     expandedColor: Colors.red[50],
                     // child: ListTile(
                        leading: CircleAvatar(
                          child: Text(rch?.data()['year'] ,textAlign: TextAlign.center,),


                          maxRadius: 32,

                        ),
                        title: Text( rch?.data()['month'],style: TextStyle(fontSize: 17.5),),
                        children: [
                          Divider(
                            thickness: 1.0,
                            height: 1.0,
                         ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 10.0
                              ),
                              child: Text(
                                rch?.data()['event']
                              ,style: TextStyle(fontSize: 18),),
                            )
                          ),
                        ],
                        //isThreeLine: true,
                        //subtitle: Text("")

                       // onTap: () {
                         // Navigator.push(
                          //  context,
                           // MaterialPageRoute(
                           //  builder: (BuildContext context) =>  MomentDetail(rch.data()['year'],rch.data()[ 'month'], rch.data()['event'])
                                  //rch.data()['date'],
                                  //rch.data()['activity'],
                              //    rch.data()['date2'],
                               //   rch.data()['activity2'],
                             //     rch.data()['date3'],
                             //     rch.data()['activity3'],
                             //     rch.data()['date4'],
                             //     rch.data()['activity4'],
                             //     rch.data()['week']),
                            ),
                          );
                        },
                      //),
                    //),
                         );
                  //},
                //);
              }
            })));
  }
}
