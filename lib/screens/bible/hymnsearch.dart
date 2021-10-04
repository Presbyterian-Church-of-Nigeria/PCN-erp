import 'package:flutter/material.dart';
import 'Hymn.dart';
import 'HymnDetail.dart';
import 'HymnMan.dart';

class HymnSearchDelegate extends SearchDelegate {
  final messages;
  
  //List<String> filterName = new List();
  


  HymnSearchDelegate({this.messages});
  
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: Icon(Icons.clear),
      onPressed: () {
        query ='';
        showSuggestions(context);
      },)
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: Icon(Icons.arrow_back),
    onPressed: () {
      close(context, null); 
     } ,
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.length < 1 ){
      return Center(
        child: Text("Type Hymn Number or title"),);
    } 
 
   HymnManager manager = HymnManager();
  return StreamBuilder<List<Hymn>>(
        stream: manager.filteredCollection(query: query),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
           switch (snapshot.connectionState){
             case ConnectionState.none:
             case ConnectionState.waiting:
             case ConnectionState.active:
                return Center(child: CircularProgressIndicator());
             case ConnectionState.done: 
               var messages =snapshot.data; 
                return ListView.separated(
        itemCount: messages.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          Hymn message = messages[index];
           
      
          return ListTile(
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
          );
        },
                );
       }
        },
      )
      ;
}

  @override
  Widget buildSuggestions(BuildContext context) {
  
  return Container();
  
  }
}
