import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:pcn_erp/nav/nav.dart';
import 'package:pcn_erp/screens/hymnal/abu_oma/igbo_hymn.dart';
import 'package:pcn_erp/screens/hymnal/effik/effik.dart';
import 'package:pcn_erp/screens/hymnal/rch/hymnlist.dart';


class HymnPage extends StatefulWidget {
  const HymnPage({ Key key}) : super(key: key);

  @override
  _HymnPageState createState() => _HymnPageState();
}

class _HymnPageState extends State<HymnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.2,
          title:

        Text('Hymnal'),

        ),
        drawer: Navbar(),
        body: Container(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView(children: [
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> RchApp()));
                },
                child:
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlueAccent),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Icon(Icons.music_note,size: 40,color: Colors.white,),
                      //Image.asset('assets/moder2.jpeg',height: 130,width: 130, fit: BoxFit.contain,),
                      Text("RCH", style: TextStyle(color:Colors.white,fontSize:20),)
                    ],

                  ),),
              ),

              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> IgboHymn()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blueAccent),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //decoration: BoxDecoration(
                      //  color: Colors.white,
                      //image: DecorationImage(
                      //Image(semanticLabel: "assets/pcnlogo1.jpg"),
                      //fit: BoxFit.cover)),
                      Icon(Icons.music_note_sharp,size: 40,color: Colors.white,),
                      //Image.asset('assets/ajah.jpg',height: 130,width: 130, fit: BoxFit.contain,),

                      Text("Igbo Hymn", style: TextStyle(color:Colors.white,fontSize:20),)
                    ],

                  ),),
              ),

              InkWell(
                onTap:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> EfikHymn()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.music_note_rounded,size: 40,color: Colors.blue,),
                      Text("Efik Hymn", style: TextStyle(color:Colors.blue,fontSize:20),)
                    ],

                  ),),
              ),



            ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10 ),
            )),
        ));
  }
}
