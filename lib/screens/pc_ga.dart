import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:pcn_erp/bible/utils/constants.dart';
import 'package:flutter/cupertino.dart';


/// Represents Homepage for Navigation
class PcGa extends StatefulWidget {
  @override
  _PcGa createState() => _PcGa();
}

class _PcGa extends State<PcGa> {
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
        title: Text('Principal Clerk'),

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
            "assets/ajah.jpg",
            height: 300,
            width: 300,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "Most Rev. Dr. Miracle Ajah PhD.\n( Principal Clerk of General Assembly)",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: size * 1.2,

              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer * 3,bottom: spacer * 2.0),
          child: Text(
             "Date of Birth: 21st August 1964 \n"
              " Marital Status: Married \n"
              "Local Government of Origin: Ohafia \n"
              " State of Origin: Abia \n"
    "miracleajah@gmail.com; majah@noun.edu.ng\n"
    "Permanent Home Address: Ndi Ikpe Compound Abia-Ohafia, Abia State\n"
    " Office Address: General Assembly Office, 26-29 Ehere Road Aba, Abia State",
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
              "APPOINTMENT/EMPLOYMENT STATUS:",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)



            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "(a) Principal Clerk of General Assembly, the Presbyterian Church of Nigeria (September 2020 till Date).\n"
              "(b) Associate Professor of Old Testament, National Open University of Nigeria, Abuja (On Leave ofAbsence).\n"
              "(c) Minister of Word and Sacrament, PCN – (August 1986 till date).",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size -1),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "UNIVERSITY/TERTIARY EDUCATION:",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),

            child: Text(
              "(a) Hebrew University, Jerusalem, Israel (Summer 2015)\n (b) University of Stellenbosch, South Africa (2004 – 2006).\n"
              "(c) Austin Presbyterian Theological Seminary, Texas, USA (1999 – 2001).\n"
              "(d) University of Nigeria, Nsukka (1991 – 1995).\n"
               "(e) Trinity Union Theological College, Umuahia (1983 – 1986)",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
              //maxLines: 5,
              //overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "PRIMARY & SECONDARY EDUCATION",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),

            child: Text(
            "(a) Okamu Secondary Commercial School, Okon Ohafia (1977 – 1982) \n"
              "(b) Community Primary School, Abia Ohafia (1972 – 1977)",



              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
              //maxLines: 5,
              //overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "ACADEMIC QUALIFICATIONS",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "(a) Proficiency Certificate on Biblical Hebrew Grammar (Hebrew University, Jerusalem) – (2015).\n "
                  "(b) (Doctor of Philosophy (PhD Old Testament – Stellenbosch University, South Africa) – (2006). \n "
                  "(c) Master of Arts (MA Biblical Studies – Austin Presbyterian Theological Seminary, Texas, USA) – (2001).\n"
                   "(d) Bachelor of Arts (BA Religion - University of Nigeria, Nsukka) – (1995).\n"
        "(e) Diploma in Theology (Dip. Theo - Trinity Union Theological College Umuahia) – (1986). \n"
        "(f) West African School Certificate (WASC & GCE) - (1982 & 1989).\n"
          "(g) First School Leaving Certificate (FSLC) - (1977)\n",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              " DETAILS OF PASTORAL EXPERIENCE:",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "(a) Interim Minister (Volunteer Service), PCN Lugbe Across Out-Post, Lugbe Parish –(October 2019 – Till Date).\n"
                "(b) Interim Minister (Volunteer Service), PCN Ibafo Mission – (May 2015 – December 2016).\n"
                 "(c) Minister In-Charge, Umuahia Parish – (2002 – 2005).\n"
                 "(d) Minister In-Charge, Ikeja Parish – (1994 – 1999).\n"
                 "(e) Minister In-Charge, Ani Parish Uyo – (June 1990 – December 1990).\n"
                  "(f) Associate Minister at Enugu Parish (Ezzagu and Nsukka Congregations) – (1987 – 1989 and 1989 – 1990) respectively.\n"
                  "(g) Probationer at Enugu Parish (Ezzagu Congregation) – (1986 – 1987).\n"
                  "(h) Ordained as Minister of Word and Sacrament at St. Andrews PCN Uwani Enugu, Enugu Parish – (September 1987).\n"
                  "(i) Licensed as Minister of Word, the Presbyterian Church of Nigeria at Hope Waddell Chapel Calabar – (August 1986).",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
                " DETAILS OF ECUMENICAL EXPERIENCE:",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
                "(a) Leader, Ministerial Team, NOUN Christian Fellowship, National Open University of Nigeria, Headquarters, Abuja (2018 – 2020).\n"
                 "(b) National Coordinator, Biblical Scholars’ Translation Engagement Programme (BiSTEP), Nigeria – (2017 – till date).\n"
                "(c) National President, Abia-Ohafia for Christ Association (2018 – 2020).\n"
                 "(d) National Coordinator, NOUN Christian Fellowship, National Open University of Nigeria, Headquarters, Abuja (2014 – 2018).\n"
                 "(e) Vice Chairman, Abia State Christain Council of Nigeria (CCN), 2002-2005. \n"
                    "(f) Chaplain, All Saints Chapel, National Roots Crops Research Institution, Umudike – (2000 – 2002).\n"
                   " (g) Assistant Chaplain at Christ Church Chapel, University of Nigeria, Nsukka, (1991-1995).",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
              maxLines: 6,
             // overflow: ,
            ),
          ),
        ],
      ),
    );
  }
}

