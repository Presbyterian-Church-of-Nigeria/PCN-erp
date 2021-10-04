
import 'package:flutter/material.dart';

//import 'Hymn.dart';

class HymnDetail extends StatelessWidget {
  //final String c1title;
  final String c0Id;
  final String c4lyrics;

   HymnDetail( this.c0Id, this.c4lyrics);
  
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('RCH $c0Id')),
     body: ListView.builder(
       itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Card(  child: Text(this.c4lyrics,
     style: new TextStyle(color: Colors.black, 
            
            fontSize: 16.0,
            letterSpacing: 2.0),
        
            ),
            );
        }),
        );
}
}
