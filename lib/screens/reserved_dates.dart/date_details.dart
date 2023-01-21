import 'package:flutter/material.dart';


//import 'Hymn.dart';

class DateDetail extends StatelessWidget {
  //final String c1title;
  final String date;
  final String date1;
  final String date2;
  final String date3;
  final String activity;
  final String activity1;
  final String activity2;
  final String activity3;
  final String week;
  DateDetail(this.date, this.activity, this.date2,
      this.activity2, this.date3, this.activity3, this.week, this.date1, this.activity1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple.withOpacity(0.7),
          title: Text(
            "Week " +  this?.week,
            style: TextStyle(
              fontFamily: 'Montserrat',
            ),
          )),
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
                      padding: EdgeInsets.only(top: 3.0, bottom: 1.0),
                      child: Text(
                        this?.date ?? '',
                        //data().get('date'),
                        //this?.data().toString().contains('date') ? .get('date') : '',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 3.0),
                      ),
                    ),
                    //SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.only(top: 3, bottom: 1),
                      child: Text(
                        this?.activity ?? '',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.red,
                            fontFamily: 'Montserrat',
                            fontSize: 18.0,
                            wordSpacing: 3.0),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 3, bottom: 1),
                      child: Text(
                        this?.date1 ?? "",
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 3.0),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 3, bottom: 1),
                      child: Text(
                        this?.activity1 ?? "",
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.red,
                            fontFamily: 'Montserrat',
                            fontSize: 18.0,
                            wordSpacing: 3.0),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 3, bottom: 1),
                      child: Text(
                        this?.date2 ?? "",
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 3.0),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 3, bottom: 1),
                      child: Text(
                        this?.activity2 ?? "",
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.red,
                            fontFamily: 'Montserrat',
                            fontSize: 18.0,
                            wordSpacing: 3.0),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 3, bottom: 1),
                      child: Text(
                        this?.date3 ?? "",
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 3.0),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 3, bottom: 1),
                      child: Text(
                        this?.activity3 ?? "",
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.red,
                            fontFamily: 'Montserrat',
                            fontSize: 18.0,
                            wordSpacing: 3.0),
                      ),
                    ),
                  ]),
            );
          }),
    );
  }
}
