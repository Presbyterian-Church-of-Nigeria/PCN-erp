import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:pcn_erp/routes/routes.dart';
import 'package:pcn_erp/nav/nav.dart';
import 'package:pcn_erp/screens/bible.dart';
import 'package:pcn_erp/screens/moderator.dart';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../nav/nav.dart';
import 'hymnal/hymn_home.dart';
import 'pc_ga.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      Text('Dashboard'),
      ),
      drawer: Navbar(),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(children: [
          InkWell(
            onTap: (){
               Navigator.push(context,MaterialPageRoute(builder: (context)=> Mod()));
            },
            child:
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepOrangeAccent),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  //Icon(Icons.import_contacts_sharp,size: 40,color: Colors.white,),
                  Image.asset('assets/moder2.jpeg',height: 130,width: 130, fit: BoxFit.contain,),
                  Text("Moderator", style: TextStyle(color:Colors.white,fontSize:20),)
                ],

              ),),
          ),

              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> PcGa()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lime),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //decoration: BoxDecoration(
                        //  color: Colors.white,
                          //image: DecorationImage(
                               //Image(semanticLabel: "assets/pcnlogo1.jpg"),
                              //fit: BoxFit.cover)),
                      //Icon(Icons.import_contacts_sharp,size: 40,color: Colors.white,),
                      Image.asset('assets/ajah.jpg',height: 130,width: 130, fit: BoxFit.contain,),

                      Text("PC of GA", style: TextStyle(color:Colors.white,fontSize:20),)
                    ],

                  ),),
              ),

              InkWell(
                onTap:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> HymnPage()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreen),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.auto_stories,size: 40,color: Colors.white,),
                      Text("Hymnal", style: TextStyle(color:Colors.white,fontSize:20),)
                    ],

                  ),),
              ),

              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> BiblePage()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.menu_book,size: 40,color: Colors.white,),
                      Text("Bible", style: TextStyle(color:Colors.white,fontSize:20),)
                    ],

                  ),),
              ),
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> BiblePage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black26),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.my_library_books,size: 40,color: Colors.white,),
                  Text("Blue Book", style: TextStyle(color:Colors.white,fontSize:20),)
                ],

              ),),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> BiblePage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.cyanAccent),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.library_books_outlined,size: 40,color: Colors.white,),
                  Text("P and P", style: TextStyle(color:Colors.white,fontSize:20),)
                ],

              ),),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> BiblePage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purpleAccent),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.import_contacts_sharp,size: 40,color: Colors.white,),
                  Text("Dates", style: TextStyle(color:Colors.white,fontSize:20),)
                ],

              ),),
          ), InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> BiblePage()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_pin,size: 40,color: Colors.white,),
                  Text("My Church", style: TextStyle(color:Colors.white,fontSize:20),)
                ],

              ),),
          )

           ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10 ),
      )),
    ));
  }
}
