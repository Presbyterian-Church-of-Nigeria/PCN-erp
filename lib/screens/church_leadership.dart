import 'package:flutter/material.dart';
import 'package:pcn_erp/screens/moderator.dart';
import 'package:pcn_erp/screens/pc_ga.dart';




/// Represents Homepage for Navigation
class church_leaders extends StatefulWidget {
  @override
  _church_leaders createState() => _church_leaders();
}

class _church_leaders extends State<church_leaders> {
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
                          //Icon(Icons.import_contacts_sharp,size: 40,color: Colors.white,),
                          Image.asset(
                            'assets/moder2.jpeg',
                            //height: ,
                            width: 130,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            "The Prelate & Moderator",
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
                          //decoration: BoxDecoration(
                          //  color: Colors.white,
                          //image: DecorationImage(
                          //Image(semanticLabel: "assets/pcnlogo1.jpg"),
                          //fit: BoxFit.cover)),
                          //Icon(Icons.import_contacts_sharp,size: 40,color: Colors.white,),
                          Image.asset(
                            'assets/ajah.jpg',
                            //height: 100,
                            width: 130,
                            fit: BoxFit.contain,
                          ),

                          Text(
                            "Principal Clerk",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    // onTap: () {
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => PcGa()));
                    // },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lime),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //decoration: BoxDecoration(
                          //  color: Colors.white,
                          //image: DecorationImage(
                          //Image(semanticLabel: "assets/pcnlogo1.jpg"),
                          //fit: BoxFit.cover)),
                          //Icon(Icons.import_contacts_sharp,size: 40,color: Colors.white,),
                          Image.asset(
                            'assets/rev_s_okoro.jpeg',
                            height: 120,
                            width: 130,
                            fit: BoxFit.contain,
                          ),

                          Text(
                            "Deputy Principal Clerk",
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

        )
    );
  }
}