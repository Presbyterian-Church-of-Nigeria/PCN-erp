import 'package:flutter/material.dart';

//import 'Hymn.dart';

class MomentDetail extends StatelessWidget {
  //final String c1title;
  final String year;
  final String month;
  final String event;

MomentDetail(this.year, this.month, this.event);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("" + this.year)),
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
                      padding: EdgeInsets.only(top:  10.0,bottom:  1.0),
                      child: Text(
                        this?.month??"",
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold, wordSpacing: 3.0),
                      ),),
                    //SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.only(top:  3,bottom:  1),

                      child: Text(this?.event??'',
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
