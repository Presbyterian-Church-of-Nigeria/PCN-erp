import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:pcn_erp/bible/utils/constants.dart';
import 'package:flutter/cupertino.dart';


/// Represents Homepage for Navigation
class Mca extends StatefulWidget {
  @override
  _Mca createState() => _Mca();
}

class _Mca extends State<Mca> {
  //final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  static const spacer = 10.0;
  static const size = fontSize - 0.2;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MCA'),

      ),
      body:

      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: _content(),
        ),
      ),
    );
  }

  _content() {
    return Center(
      child: Column(
        children: <Widget>[
          _about(),
          _info(),
        ],
      ),
    );
  }

  Widget _about() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[


        Container(
          padding: EdgeInsets.only(left: 20.0,right: 20.0),
          child: Image.asset(
            "assets/mcalogo.png",
            height: 300,
            width: 300,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "THE MEN’S CHRISTIAN ASSOCIATION",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: size * 1.2,

              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer * 3,bottom: spacer * 2.0),
          child: Text("",

            textAlign: TextAlign.center,

            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: size -1,
              // color: Colors.blueAccent,
            ),
          ),
        ),
        SizedBox(height: 0.1,),


      ],
    );
  }

  Widget _info() {
    return Padding(
      padding: const EdgeInsets.all(spacer),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Divider(
            color: Colors.black26,
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
                "INTRODUCTION",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)



            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text("The Men’s Christian Association (MCA) is an arm of the Presbyterian church of Nigeria made up of adult males in the church. Every male member of the church above thirty years is qualified to be enlisted into the MCA.\n"
              "MCA is a strong pillar of the church that provides leadership in the church spiritually and financially. The Arm promotes and co-ordinates men's activities in the church and provides opportunities for Christian fellowship that aids spiritual growth of the members.\n"
              "In addition to promoting evangelism of the gospel in obedience to The Great Commission and, encouraging the economic growth of men, other objectives of MCA include:\n"
              "•	To promote fellowship and Bible Study\n"
              "•	To promote and foster Christian principles within their membership\n"
             " •	To encourage MCA members to give Spiritual, Moral and Financial support to the churches\n"
              "•	To promote cooperation with other organizations within The Presbyterian Church\n"
             " •	To promote cooperation with Men’s Association of other Christian Churches.\n"
             " •	To promote such activities as will aid the spiritual progress of the MCA and the cooperation of The Presbyterian Church of Nigeria.\n",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size -1),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
                "LEADRSHIP STRUCTURE OF MCA",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),

            child: Text("The Men’s Christian Association (MCA) exists at all levels of the Church, viz:\n"
               " •	Parish \n"
                "•	Presbytery\n"
                "•	Synod \n"
               " •	National Body otherwise called the Central Working Committee (CWC)\n"
             " Each level has a defined leadership structure with members to elected serve as executives for defined number of years. Each level of leadership is subjected to the authority of the next hierarchy of leadership.\n"
             " At the Parish level, the MCA is supervised by a Ruling Elder appointed by the Kirk Session of the Parish in consultation with the Parish MCA.\n"
             " At the Presbytery and Synod Levels, Coordinators are appointed by the respective Presbytery and Synod to supervise the activities of the Arm.\n"
          "At the National Level (CWC), the National Desk Coordinator appointed by the General Assembly with due consultation of the leadership of the CWC supervises the activities of the Arm.\n"
    "Aside the Parish level, representation at the other levels of the Arm is collegiate as specified in the Constitution of MCA.\n"
              ,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
              //maxLines: 5,
              //overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
                "",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),

            child: Text("",


              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
              //maxLines: 5,
              //overflow: TextOverflow.ellipsis,
            ),
          ),
          // Begining of Topic and Body
          //Topic

          //End of Topic and Body

          // Begining of Topic and Body
          //Topic

          // Body

          //End of Topic and Body


        ],
      ),
    );
  }
}

