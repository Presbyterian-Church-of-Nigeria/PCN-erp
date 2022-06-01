import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:pcn_erp/bible/utils/constants.dart';
//import 'package:flutter/cupertino.dart';


/// Represents Homepage for Navigation
class Dc extends StatefulWidget {

  @override
  _Dc createState() => _Dc();
}

class _Dc extends State<Dc> {
  // final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
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
        title: Text('Deputy Principal Clerk'),

      ),
      body:// SfPdfViewer.asset(
      //'assets/pdf/ModEke.pdf',
      //key: _pdfViewerKey,
      //),
      //);
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
                              width: 300,
                              height: 240,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      'assets/rev_oko.jpeg',
                                    ),
                                  ))),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "Rt. Rev Solomon Okoro",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: size * 1.2,

              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "Rt. Rev. Solomon Moses Okoro is married to Elder Dr. Mrs. Ijeoma S. Okoro and they are blessed with (4) Four wonderful children",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
            ),

        )

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
              " BIRTH AND PARENTAGE",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
              ,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "The Rt. Rev. Solomon Moses Okoro was born in Calabar on the 27th of February, 1971 to the family of late Hon. Rev .Dr. Moses D. Okoro and Elder Evangelist Victoria M. Okoro of Atani Arochukwu in Abia State. His father was a minister of the word and sacrament of the Presbyterian Church of Nigeria.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
                "CALL TO MINISTRY:",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),

            child: Text(
              "Rt. Rev. Solomon who was baptized in 1971 and confirmed in 1987. He later had a dramatic personal encounter with the Lord Jesus Christ in 1989 that convinced him of his call to Ministry. \n After due process and training, Rt. Rev. Solomon Moses Daniel Okoro was licensed as a minister of the word on 4th July 1994 at Mary Slessor Memorial Presbyterian church Obinkita Arochukwu At the successful completion of his probationary period, he was ordained a minister of the and sacrament on 13th day of August 1995 at the Presbyterian Church of Nigeria, Alheri Jos Parish in Plateau State."
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
                "MINISTER IN CHARGE",

                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),

            child: Text(
                "Gembu Parish, Taraba State -1995-1999,\n"
              "Maiduguri Parish, Borno State-1999-2003.\n"
              "Isuigwu Parish,Ohafia South Presbytery -2003-2007.\n"
             " Festac Parish, Lagos West Presbytery 2007-2010.\n"
              "Makurdi Parish, Benue Presbytery.  2010-2014.\n"
            "Tentative Chaplain University of Nigeria, Enugu   -2014-2015,\n"
             " St. Peters Presbyterian Church Ugep in Yakkurr South Presbytery.",



              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
              //maxLines: 5,
              //overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
                "ADMINISTRATIVE POSITIONS",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "Secretary Board of Personnel Management of The Presbyterian Church of Nigeria 2016 till date \n"
                "National Convener Presbyterian Ministers retreat 2017 till date\n"
                "Clerk of Synod of the West - 2008 -2010 \n"
                "Clerk of Ohafia South Presbytery   2005 - 2007 \n"
                " Chairman committee on Church and Culture (Synod of the East) -2006-2007 \n"
                "Moderator, Jos Presbytery 2001 -2003 \n"
               " Moderator of Yakkurr South Presbytery 2015 - 2016 \n"
               "Convener/Chairman Benue Mission Partners, 2012 till date",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
                "INSTITUTIONS ATTENDED AND CERTIFICATES OBTAINED",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
                  "Acha Primary School   Isukwuato, First School Leaving Certficate. \n"
                  "Aggrey Memorial Sunday School Arochukwu, West African Examination Certificate.\n"
                  "Trinity Theological College Umuahia- Diploma in Theology.\n"
                  " University of Calabar, Diploma in Rel. Studies.\n"
                 " Theological College of Northern Nigeria Bukuru( In affiliation with University of Jos), Bachelor of Divinity \n"
                  "Benue State University- M.A. Religion",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
                "ECUMENICAL AND EXTRA CHURCHES SERVICES",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "Vice Chairman Christian Council of Nigeria Benue State Chapter 2013 – 2014 \n"
              "Chairman of PRESBYCARE an NGO with human capacity building and community development agenda. \n"
              "Proprietor Hiveen Integrated farm. A green project targeted at resuscitating and promoting large scale agriculture as a historical compliment for effective Ministry in the Presbyterian Church of Nigeria.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
                "PUBLICATIONS",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "Rt. Rev. Solomon Okoro has written the following books. They are: bridge to Godly Success (2011),\n Superlative Christianity, the Idea of the kingdom of God in Nigeria (2021)",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
            ),
          ),

        ],
      ),
    );
  }
}

