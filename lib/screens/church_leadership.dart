//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcn_erp/screens/deputy-c.dart';
import 'package:pcn_erp/screens/moderator.dart';
import 'package:pcn_erp/screens/pc_ga.dart';

/// Represents Homepage for Navigation
class ChurchLeaders extends StatefulWidget {
  @override
  _ChurchLeaders createState() => _ChurchLeaders();
}

class _ChurchLeaders extends State<ChurchLeaders> {
  //final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Church Leadership'),
        ),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mod()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepOrangeAccent),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 120,
                              height: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/moder2.jpeg'),
                                  ))),
                          Text(
                            "Prelate & Moderator",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PcGa()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lime),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 120,
                              height: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/ajah.png'),
                                  ))),
                          Text(
                            "Principal Clerk",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dc()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lime),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 120,
                              height: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      'assets/rev_oko.png',
                                    ),
                                  ))),
                          Text(
                            "Deputy Principal Clerk",
                            textAlign: TextAlign.center,
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
