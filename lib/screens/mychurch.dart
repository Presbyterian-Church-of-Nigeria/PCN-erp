import 'package:flutter/material.dart';




/// Represents Homepage for Navigation
class Mychurch extends StatefulWidget {
  @override
  _Mychurch createState() => _Mychurch();
}

class _Mychurch extends State<Mychurch> {
  //final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Church'),
      ),
      body: Container(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView(
              children: [
                InkWell(
                 // onTap: () {
                  //  Navigator.push(context,
                  //      MaterialPageRoute(builder: (context) => Mod()));
                  //},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.deepOrangeAccent),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Icon(Icons.import_contacts_sharp,size: 40,color: Colors.white,),
                        Image.asset(
                          'assets/mcalogo.png',
                          //height: ,
                          width: 130,
                          fit: BoxFit.contain,
                        ),
                        Text(
                          "MCA",
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
                          'assets/womenguild.jpg',
                          //height: 100,
                          width: 130,
                          fit: BoxFit.contain,
                        ),

                        Text(
                          "WOMEN GUILD",
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
                          'assets/pypan.jpg',
                          height: 100,
                          width: 130,
                          fit: BoxFit.contain,
                        ),

                        Text(
                          "PYPAN",
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
                          'assets/cgit.jpg',
                          height: 100,
                          width: 130,
                          fit: BoxFit.contain,
                        ),

                        Text(
                          "CGIT",
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