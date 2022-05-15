import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pcn_erp/nav/nav.dart';

class Cgit extends StatefulWidget {
  //const Cgit({Key? key}) : super(key: key);

  @override
  _CgitState createState() => _CgitState();
}

class _CgitState extends State<Cgit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
//backgroundColor: Colors.transparent,

          title: Text(
            'CGIT',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),

          centerTitle: true,
          flexibleSpace: ClipRRect(
//
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('??'),
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5), BlendMode.darken))),
              )),
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50))),
          actions: <Widget>[
// Using Stack to show Notification Badge
          ],
        ),

//extendBodyBehindAppBar: true,

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
                   // DocumentSnapshot rch = messages[index];
                    return Card(
                        elevation: 20,
                        color: Colors.white24,
//widthFactor: 20,
//heightFactor: 20,
                        child: SizedBox(
                          width: 250.0,
                          height: 80.0,
                          child: DefaultTextStyle(
                            style: const TextStyle(
                                fontSize: 35.0,
                                fontFamily: 'Agne',
                                color: Colors.black),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                    'Christain Girls in Training(CGIT) '),
                                TypewriterAnimatedText(' Coming Soon'),
                              ],
                            ),
                          ),
                        ));
                  },
                );
              }
            }));
  }
}
