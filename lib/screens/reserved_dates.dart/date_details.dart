import 'package:flutter/material.dart';

//import 'Hymn.dart';

class DateDetail extends StatelessWidget {
  //final String c1title;
  final String date;
  final String date2;
  final String date3;
  final String date4;
  final String activity;
  final String activity2;
  final String activity3;
  final String activity4;
  final String week;
  DateDetail(this.date, this.activity, this.date2, this.activity2, this.date3, this.date4, this.activity3, this.activity4,this.week);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Week" + this.week)),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 5.0,
                shadowColor: Colors.grey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 15.0),
                  Container(
                    padding: EdgeInsets.only(top:  3.0,bottom:  1.0),
                  child: Text(
                  this?.date??"",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold, wordSpacing: 3.0),
                ),),
                  //SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(top:  3,bottom:  1),

                    child: Text(this?.activity??'',
                    textAlign: TextAlign.center,

                    style: new TextStyle(
                      color: Colors.red, fontSize: 18.0, wordSpacing: 3.0),
            ),),
                  SizedBox(height: 5.0,),
                  Container(
                    padding:  EdgeInsets.only(top: 3, bottom: 1),
                 child: Text(
                    this?.date2??"",
                    textAlign: TextAlign.center,

                    style: new TextStyle(
                        color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold, wordSpacing: 3.0),
                  ),),
                  Container(
                    padding:  EdgeInsets.only(top: 3, bottom: 1),

                    child:
                  Text(this?.activity2??"",
                    textAlign: TextAlign.center,

                    style: new TextStyle(
                        color: Colors.red, fontSize: 18.0, wordSpacing: 3.0),
                  ),),
                  SizedBox(height: 5.0,),
                  Container(
                    padding:  EdgeInsets.only(top: 3, bottom: 1),
                    child: Text(
                      this?.date3??"",
                      textAlign: TextAlign.center,

                      style: new TextStyle(
                          color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold, wordSpacing: 3.0),
                    ),),
                  Container(
                    padding:  EdgeInsets.only(top: 3, bottom: 1),

                    child:
                    Text(this?.activity3??"",
                      textAlign: TextAlign.center,

                      style: new TextStyle(
                          color: Colors.red, fontSize: 18.0, wordSpacing: 3.0),
                    ),),
                  SizedBox(height: 5.0,),
                  Container(
                    padding:  EdgeInsets.only(top: 3, bottom: 1),
                    child: Text(
                      this?.date4??"",
                      textAlign: TextAlign.center,

                      style: new TextStyle(
                          color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold, wordSpacing: 3.0),
                    ),),
                  Container(
                    padding:  EdgeInsets.only(top: 3, bottom: 1),

                    child:
                    Text(this?.activity4??"",
                      textAlign: TextAlign.center,

                      style: new TextStyle(
                          color: Colors.red, fontSize: 18.0, wordSpacing: 3.0),
                    ),),
              ]
            ),
              );


          }),
    );
  }

}
