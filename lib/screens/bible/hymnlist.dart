import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_hymn/HymnDetail.dart';
import 'package:my_hymn/HymnMan.dart';
import 'package:my_hymn/hymnsearch.dart';

import 'Hymn.dart';

class HymnList extends StatefulWidget {
  final String title;
  

  const HymnList({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HymnlistState();
    }
      
    class _HymnlistState extends State<HymnList> {
      Future<List<Hymn>> messages ;
       
       void initState(){
         super.initState();

         messages = Hymn.browse();
       } 
       String query = '';
       HymnManager manager = HymnManager();
      Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,textAlign: TextAlign.justify,),
      
         actions: <Widget>[
           IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            showSearch(context: context, delegate: HymnSearchDelegate(messages: messages));
          },
         ),
         Padding(
           padding: EdgeInsets.only(right: 16),
         )
         ],

      ),
    
      body: StreamBuilder(
        stream: manager.hymnListView,
        builder: 
        (BuildContext context, AsyncSnapshot<List<Hymn>> snapshot) {
           List<Hymn> messages = snapshot.data;
           switch (snapshot.connectionState){
             case ConnectionState.none:
             case ConnectionState.waiting:
             case ConnectionState.active:
                return Center(child: CircularProgressIndicator());
             case ConnectionState.done: 
               var messages =snapshot.data; 
                return ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 9.0,vertical: 9.0),
        itemCount: messages.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          Hymn message = messages[index];
      
          return Card( elevation: 5.0, 
            child: ListTile(
            
            title: Text(message.c1title),
            isThreeLine: true,
            
            leading: CircleAvatar(
              child: Text(message.c0Id),
            ),
            subtitle: Text(message.c4lyrics,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,),
            
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(
                builder: (BuildContext context ) => 
                HymnDetail(message.c0Id, message.c4lyrics),
              
              ),
              ); 
            },
          ),
          );
        },
                );
       }
        },
      )); 
    
  }
}    