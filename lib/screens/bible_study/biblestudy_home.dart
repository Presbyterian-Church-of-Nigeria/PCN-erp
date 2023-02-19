import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:pcn_erp/nav/nav.dart';
import 'package:pcn_erp/screens/bible_study/mcapayment.dart';
import 'package:pcn_erp/screens/bible_study/paymentpage.dart';

class BibleStudyHome extends StatefulWidget {
  //const BibleStudyHome({ Key key}) : super(key: key);

  @override
  _BibleStudyHome createState() => _BibleStudyHome();
}

class _BibleStudyHome extends State<BibleStudyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.withOpacity(0.7),
          elevation: 0.2,
          title: Text('Bible Study 2023'),
        ),
        drawer: Navbar(),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaystackCardMethod() ));
                                  //BibleStudy()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                  //borderRadius: BorderRadius.circular(20),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                    'assets/cpver.jpg',
                                  )))),
                          Text(
                            "Bible Study 2023",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaystackCard()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                  //borderRadius: BorderRadius.circular(20),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                    'assets/cover1.jpg',
                                  )))),
                          Text(
                            "MCA Bible Study",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
              )),
        ));
  }
}
