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
                              width: 350,
                              height: 260,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/ajah.jpg'),
                                  ))),
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
      // Begining of Topic and Body
      //Topic
      Container(
        padding: EdgeInsets.only(top: spacer),
        child: Text(
            "ACADEMIC QUALIFICATIONS",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
        ),
      ),
      // Body
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
      //End of Topic and Body
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
        // Begining of Topic and Body
        //Topic
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
              "LEADERSHIP POSITIONS HELD",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
          ),
        ),
        // Body
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "(a) Coordinator, BTCLP Abuja Centre (2018 – Till Date)\n"
                "(b) National President, Abia-Ohafia for Christ Association (2018 – 2020).\n"
                "(c) National Coordinator, Biblical Scholars’ Translation Engagement Programme (BiSTEP),  Nigeria – (2017 – till date). \n"
                "(d) National Coordinator, NOUN Christian Fellowship, National Open University of Nigeria,  Headquarters, Abuja (2014 – 2018). \n"
                "(e) Rector, Hugh Goldie Lay/Theological Training Institution, Arochukwu – (2010 – 2012).  (f) Director for Lay Training, Hugh Goldie Lay/Theological Training Institution, Arochukwu,  2007 – 2010). \n"
                "(g) Special Assistant on Inter-Religious Matters to the Abia State Governor, Chief T. A. Orji – (2007-2008). \n"
                "(h) Member, Abia State Pilgrim’s Welfare Board – (2002-2005). \n"
                "(i) Vice Chairman, Abia State Christain Council of Nigeria (CCN) – (2002-2005).  (j) Clerk, South Central Synod – (2002-2005). \n"
                "(k) Moderator, Umuahia Presbytery – (2001-2002). \n"
                "(l) Registrar, Trinity Union Theological College, Umuahia – (2000-2001). \n"
                "(m)First Moderator of Synod of the West – (1996-1999). \n"
                "(n) Moderator, Lagos Presbytery – (1995-1996). \n"

                "(o) President of the Students’ Union (Chief) at Trinity Union Theological College Umuahia – (1985-1986).",

            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: size),
          ),
        ),
        //End of Topic and Body
        // Begining of Topic and Body
        //Topic
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
              "SELECTED CONTRIBUTIONS TO THE PRESBYTERIAN CHURCH OF NIGERIA  (1) Churches Planted ",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
          ),
        ),
        // Body
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "a. PCN Ibafo Mega Mission with BTCLP graduates 2nd Batch, Lagos Centre and  Presbytery Evangelism Committee, Lagos East Presbytery – 2015. \n"
                "b. PCN Apo Resettlement Estate with First Abuja Parish and Hugh Goldie Institution (over  60 students) – 2012. \n"
                "c. PCN Pegi, Abuja (Revived) with First Abuja Parish and Hugh Goldie Institution (over  60 students) – 2012. \n"
                "d. PCN City Model Church, Azikiwe Road, Umuahia with Hugh Goldie Institution (over  100 students) – 2011. \n"
                "e. PCN City Model Church, Tenant Road, Aba with BTCLP Students, Aba Centre (27 Students), Hugh Goldie Institution – 2010. \n"
                "f. PCN Isieke Model Church, Umuahia with BTCLP Students, Umuahia Centre (36  students) & Goldie Students – 2009. \n"
                "g. PCN Victory Outreach, Amuzukwu Umuahia with Umuahia Parish – 2004 \n"
                "h. PCN Solid Rock Outreach, Bende Road, Umuahia with Umuahia Parish - 2003 i. PCN Iju, Lagos (Pilot Work) with Ikeja Parish – 1999. \n"
                "j. PCN Oshodi, Lagos; General Assembly Crusade led by His Eminence James U. Ukaegbu, and handed over to Ikeja Parish for Follow-up and Nurture, hosted by Lagos  Presbytery with Synodical Power – 1995. \n"
                "k. PCN Obollo Afor with PSF UNN, and Nsukka Parish – 1993/94. \n"
                "l. PCN Edem Ani with PSF UNN, and Nsukka Parish – 1992/93. \n"
                "m. PCN Aguegede Outreach with PCN Ezzagu Congregation, Enugu Parish - 1988 n. PCN Aguonwenkeya Outreach with PCN Ezzagu Congregation, Enugu Parish - 1987. \n",

            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: size),
          ),
        ),
        //End of Topic and Body

        // Begining of Topic and Body
        //Topic
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
              "(2) Construction of Sanctuary and Manse ",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
          ),
        ),
        // Body
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "a. Built the Twin Flat Manse at PCN Umuagu, Umuahia Parish – 2004. \n"
                "b. Built and dedicated the Church Building at at PCN Ogbodiukwu, Umuahia Parish – 2003. \n"
                "c. Built the Main Sanctuary at PCN Ojodu, Ikeja Parish – 1998. \n"
                "d. Purchased the Land and built the First Sanctuary at PCN Okoba Congregation, Ikeja  Parish, Charity Road, Okoba - 1996. \n" ,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: size),
          ),
        ),
        //End of Topic and Body
        // Begining of Topic and Body
        //Topic
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
              "(3) Other Landmark Contributions   ",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
          ),
        ),
        // Body
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
              "a) Founding Partner, Basic Training for Commissioned Lay Preachers (BTCLP), 2008 – 2010. \n"
                  "b) Founding Partner, Lagos Miracle Night - 1997. \n"
                  "c) Co-Initiator for the recruitment of current generation of Yoruba Ministers to PCN  (1995-1999). \n"
                  "d) As the last Moderator of Lagos Presbytery with Synodical Power,"
                  "led in the creation of  Synod of the West through a radical decision/action tagged “Abeokuta Declaration” of  3rd February 1996, where it was decided to create 7 new Parishes and split the\n"
              "Presbytery to 3 Presbyteries within the space of 2 months – (Actualized June-July  1996)."
          "e) Founding Partner Presbyterian Students’ Fellowship (PSF), former Campus PYPAN – (1991 -1995). \n" ,
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: size),
        ),
      ),
      //End of Topic and Body
      // Begining of Topic and Body
      //Topic
      Container(
        padding: EdgeInsets.only(top: spacer),
        child: Text(
            "SCHOLARSHIPS, FELLOWSHIP AND PRIZES (with dates in respect of Undergraduate  and Postgraduate work only) ",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
        ),
      ),
      // Body
      Container(
        padding: EdgeInsets.only(top: spacer),
        child: Text(
            "(a) Full Scholarship for Bachelor of Arts in Religion at University of Nigeria Nsukka by the  Presbyterian Church of Nigeria, 1990 – 1995. \n"
                "(b) Presidential Scholarship for Master of Arts Studies at Austin Presbyterian, Theological  Seminary, Austin Texas,1999 -2001, by the World Alliance of Reformed Churches, Geneva. \n" "(c) Full Scholarship for Doctoral Research at Stellenbosch University, South Africa by His"
            "Excellency, the Executive Governor of Abia State (1999 – 2007), Chief Dr. Orji Uzor Kalu, 2004 – 2006. \n"
      "(d) Travel/ResearchGrant for the paper: “Religious Education and Government Takeover/Return of  Mission Schools in Nigeria”, RE21- Religious Education in Global-Local World, August 29-30,  2013, University College Cork (UCC), Ireland by the Department of Religions, University  College Cork (UCC). \n"
      "(e) Travel/Study Grant for Summer Proficiency Course on Biblical Hebrew at Hebrew University,  Jerusalem, Israel, June 18th– July 22nd 2015, by the Vice Chancellor, Prof. Vincent Tenebe,  National Open University of Nigeria. \n"
      "(f) Travel Grant for the paper: “Narratives of Violence in Numbers 25: Between Text and  Reception”, Joint Conference of Old Testament Societies hosted by the Oudtestamentisch  Werkgezelschap in Nederland en België (OTW) and Old Testament Society of South Africa  (OTSSA), at the Faculty of Theology and Religious Studies, University of Groningen, the  Netherlands, 22nd– 24th August 2018. \n"
      "(g) Travel Grant for the paper: “Globalisation and Religious Fundamentalism in Nigeria: Problems  and Prospects” authored by Akper, G. & Ajah, M. at the 15th General Assembly of the Council  for the Development of Social Science Research in Africa (CODESRIA), December 17th– 21st December 2018 at King Fahd Hotel in Dakar, SENEGAL. \n"
      "(h) Travel Grant for the paper: “David Adamo and Communal Reading as an Interpretive Method  in African Biblical Hermeneutics”, 2019 Annual Meeting of the Society of Biblical Literature (SBL), San Diego, CA, United States of America, November 23 – 26, 2019. \n" ,
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: size),
      ),
    ),
    //End of Topic and Body
    // Begining of Topic and Body
    //Topic
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "HONOURS, DISTINCTIONS AND MEMBERSHIP OF LEARNED SOCIETIES (1) Honours and Distinctions ",
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
    ),
    ),
    // Body
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "(a) Thirty (30) years of Long Service Award in the Presbyterian Church of Nigeria by the General  Assembly, PCN at Lagos Presbyterian Church, Yaba, August 2016. \n"
    "(b) Twenty five (25) years of Long Service Award in the Presbyterian Church of Nigeria by the  General Assembly, PCN at Uyo, August 2012. \n"
    "(c) Research Associate at Old and New Testament Discipline Group, Faculty of Theology,  University of Stellenbosch, South Africa (2007 till date). \n"
    "(d) PCN Minister of the year 2004 by Hugh Goldie Lay/Theological Training Institution,  Arochukwu, 2004. \n"
    "(e) Jerusalem Pilgrim (JP), By Emmanuel Tours, Jerusalem, 2002, 2003 & 2004.  (f) Fifteen (15) years of Long Service Award by the General Assembly, The Presbyterian Church  of Nigeria at Calabar, 2001. \n"
    "(g) Best Graduating Student in Old Testament Studies from University of Nigeria Nsukka. 1995.  (h) President of the Students Union (the Chief) at Trinity Union Theological College, Umuahia,  1985 - 1986. \n" ,
    textAlign: TextAlign.justify,
    style: TextStyle(fontSize: size),
    ),
    ),
    //End of Topic and Body
    // Begining of Topic and Body
    //Topic
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "(2) Membership of Learned Societies  ",
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
    ),
    ),
    // Body
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "(a) Member, The Nigerian Association for Biblical Studies (NABIS). \n"
    "(b) Member, Society for Biblical Literature (SBL). \n"
    "(c) Member, Council for the Development of Social Science Research in Africa (CODESRIA) (d) Old Testament Society of South Africa (OTSSA). \n"
    "(e) Member, Biblical Research Forum of Nigeria (BRESFON). \n"
    "(f) Member, International Council on Distance Education (ICDE). \n" ,
    textAlign: TextAlign.justify,
    style: TextStyle(fontSize: size),
    ),
    ),
    //End of Topic and Body
    // Begining of Topic and Body
    //Topic
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "DETAILS OF TEACHING EXPERIENCE  ",
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
    ),
    ),
    // Body
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "(a) Associate Professor of Old Testament, Department of Religious Studies, National Open  University of Nigeria (January 2020 – Till Date). \n"
    "(b) Part-Time Lecturer at Redeemed Christian Bible College, Abuja Centre (April 2019 – 2020). \n"  "(c) Senior Lecturer at National Open University of Nigeria, Department of Christian Theology  (2017 – 2019). \n"
    "(d) Lecturer I at National Open University of Nigeria, Department of Christian Theology (2012 - 2016). \n"
    "(e) Research Associate at Old and New Testament Discipline Group, Faculty of Theology,  University of Stellenbosch, South Africa (2007 till date). \n"
    "(f) Rector at Hugh Goldie Lay/Theological Training Institution, Arochukwu, in affiliation with  Abia State Univeristy (September 2010 – August 2012). \n"
    "(g) Senior Lecturer (Part-Time) at Abia State University (2011 – 2012). \n"
    "(h) Senior Lecturer at Hugh Goldie Lay/Theological Training Institution, Arochukwu, in affiliation  with Abia State Univeristy, Uturu (January 2007 – June 2012). \n"
    "(i) Lecturer (Adjunct) at Africa Theological College, Khayelisha, South Africa (2005 – 2006). \n"  "(j) Lecturer at Essien Ukpabio Presbyterian Theological Institution, Itu, in affiliation with  University of Calabar (2001 – 2003). \n"
    "(k) Registrar and Lecturer at Trinity Union Theological College, Umuahia, in affilliation with University of Nigeria, Nsukka (2000 – 2001). \n"  ,
    textAlign: TextAlign.justify,
    style: TextStyle(fontSize: size),
    ),
    ),
    //End of Topic and Body
    // Begining of Topic and Body
    //Topic
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "COMPUTER SOFTWARE SKILLS ",
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
    ),
    ),
    // Body
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "(a) Computer Appreciation Skill (MS Word, Excel, PowerPoint, etc). \n"
    "(b) Use of Internet (Browsing for Research, Email, Social Media, etc)"
    ,
    textAlign: TextAlign.justify,
    style: TextStyle(fontSize: size),
    ),
    ),
    //End of Topic and Body
    // Begining of Topic and Body
    //Topic
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "RESEARCH ",
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
    ),
    ),
    // Body
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    " Project, Dissertation and Thesis: (Doctoral Dissertation 2006) Theological Perspectives on Tithing  in the Old Testament, and their implications for believing communities in Africa, Stellenbosch:  Stellenbosch University (http://scholar.sun.ac.za/handle/10019.1/1366)" ,
    textAlign: TextAlign.justify,
    style: TextStyle(fontSize: size),
    ),
    ),
    //End of Topic and Body
    // Begining of Topic and Body
    //Topic
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "PUBLICATIONS   ",
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
    ),
    ),
    // Body
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "Google Scholar Profile: https://scholar.google.com/citations?user=jf3QYD8AAAAJ&hl=en&oi=ao"  ,
    textAlign: TextAlign.justify,
    style: TextStyle(fontSize: size),
    ),
    ),
    //End of Topic and Body
    // Begining of Topic and Body
    //Topic
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "(a) Books already published  ",
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
    ),
    ),
    // Body
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "1. *Ajah, M. (2016). Biblical Hebrew: An Introductory Grammar. Jos: African Christian  Textbooks (ACTS). 171 pp. ISBN 978-978-905-278-3. (Nigeria) " ,
    textAlign: TextAlign.justify,
    style: TextStyle(fontSize: size),
    ),
    ),
    //End of Topic and Body
    // Begining of Topic and Body
    //Topic
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "(b) Chapters in Books already published  ",
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
    ),
    ),
    // Body
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    " 2. *Ajah M. (2016). “Examples of Women leaders in the Presbyterian Church of Nigeria”,  in K. J. Hyun and D. C. Chemorion (Eds), The Quest for Gender Equity in  Leadership.Eugene, Oregon: Wipf& Stock Publishers (Anchored by St. Paul’s  University, Limuru, Kenya). 162 – 179 pp. ISBN 978-1-4982-9333-4 (USA). \n"
    "3. **Ajah M. (2017). “A Tradition Historical Analysis of Numbers 18 and its Implication  for Stewardship in Africa”, in J. D. Gwamna, A. O. Dada & Hope Amolo (Eds), The  Present State and the Future of Biblical Studies in Africa: Essays in Honour of Samuel  Oyinloye Abogunrin. Ibadan: Nigerian Association for Biblical Studies (NABIS). 174 – 196 pp. ISBN 978-978-960-214-8. " ,
    textAlign: TextAlign.justify,
    style: TextStyle(fontSize: size),
    ),
    ),
    //End of Topic and Body
    // Begining of Topic and Body
    //Topic
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "(c) Articles that have already appeared in Refereed Conference Proceedings  ",
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
    ),
    ),
    // Body
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "4. *Ajah, M. (2015). “A Theological Reflection on the Book of Jonah in the Face of  National Insecurity”, in J. K. Ayantayo and S. A. Fatokun (Eds), Religious and Security  Issues: Proceedings of 2013 Biennial International Religious Studies Conference,  Religious Studies Series, Vol 5. Ibadan: Department of Religious Studies, University of  Ibadan; 232 – 247 pp (Nigeria). \n"
    "5. *Ajah, M. (2014). “Promoting Open Educational Resources(OER) for Theological/Religious Education in Nigeria”, International Science Index, Vol 8, No.  12, Proceedings of the XII International Conference on Open Learning and Distance  Education (ICOLDE), 18-19 December 2014, Bangkok, Thailand, 3423 – 3426pp  (Thailand) (Participation sponsored by National Open University of Nigeria). \n"
    "6. *Ajah, M. (2013). “The role of religion in fostering social justice through distance  education in Nigeria”, in UNED-ICDE (Universidad Nacional de Education a Distancia & International Council for Open and Distance Education), Mobilizing Distance  Education for Social Justice and Innovation: Proceedings of the International  Conference, 7-9 March 2013. Madrid, Spain: UNED-ICDE. 278-291pp (Spain). \n"
    "7. **Ajah, M (2018). “The Critical Role of Religion in Nigeria Elections in the Light of 1  Kings 22”, in 30th Annual Conference of the Nigerian Association for Biblical Studies,  held at Benue State University, Makurdi, Benue State, 4-7 July 207 (Ibadan: Nigerian  Association for Biblical Studies), 201-214pp. \n"
    "8. **Ajah, M & Akper, G (2018). “Globalisation and Religious Fundamentalism in  Nigeria: Problems and Prospects”, Dakar, Senegal: 15th General Assembly of the  Council for the Development of Social Science Research in Africa (CODESRIA), 17 – 21 December 2018 at King Fahd Hotel in Dakar, SENEGAL. https://codesria.org/generalassembly15/ga-full-papers/.  \n"
    "9. **Ajah, M (2019). “David Adamo and Communal Reading as an Interpretive Method in  African Biblical Hermeneutics”, in the Annual Meeting of the Society for Biblical  Literature (SBL), 23 – 26 November 2019 at the International Convention Centre, San  Diego, Califonia, USA. https://www.sblcentral.org/conferencePaperDetails/52576"  ,
    textAlign: TextAlign.justify,
    style: TextStyle(fontSize: size),
    ),
    ),
    //End of Topic and Body
    // Begining of Topic and Body
    //Topic
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "(d) Articles that have already appeared in Learned Journals  ",
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
    ),
    ),
    // Body
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "10. *Ajah, M. (2006). “Tithing in Ugarit and the Pentateuch – Possible implications for  Africa”. Scriptura, Vol. 91, pp. 31-42. (Department of Old & New Testament,  University of Stellenbosch, South Africa). \n"
    "11. *Ajah, M. (2011). “An Assessment of the Priestly Emolument in Numbers 18: 8-32”.  Scriptura 103, 107-125. (Department of Old & New Testament, University of  Stellenbosch, South Africa). \n"
    "12. *Ajah, M. (2012). “The Purpose for Tithe in the Old Testament”. International Journal  of Theology and Reformed Tradition,Vol. 4, pp. 24-32. (University of Nigeria, Nsukka). \n"
    "13. *Ajah, M. (2012). “Religious Groups and Distance education in Nigeria”.Prof. Bassey  Andah Journal of Cultural Studies, Vol. 5, pp. 67- 80. (University of Calabar). \n"
    "14. *Ajah, M. (2013). “The Significance of Pentateuchal Tithing as a Legal Instruction for  the 21st Century Reader”. The Asbury Journal, Vol. 68: No. 2: 106-119. (Graduate  School of Theology, Asbury, USA). \n"
    "15. *Ajah, M. (2014). “Reprisal Attacks: A Theological Reflection of Genesis 34 on  Reactions to Evil and Human Wickedness in Nigeria”.Scriptura Journal for Contextual  hermeneutics in Southern Africa,Vol. 113, No. 1: 1-13. (University of Stellenbosch,  South Africa). \n"
    "16. *Ajah, M. (2015). “Love for the stranger in Deuteronomy 10:19 and its socio-cultural  implications for economic development in Nigeria”. Africa Journal of Biblical  Research, Vol. 2, Nos. 1 & 2: 97-111. (Biblical Research Forum of Nigeria,  BRESFON).\n"
    "17. *Ajah, M. (2015) “Religious Education and Nation Building in Nigeria”, Stellenbosch  Theology Journal (STJ), Vol. 1, No. 2: 263-282 (University of Stellenbosch, South  Africa). http://ojs.reformedjournals.co.za/index.php/stj/article/view/1260. \n"
    "18. **Ajah, M. (2019) “Cancelation or Suspension of Debts in Deuteronomy 15 – A Literary Assessment of הָּ טִ מְׁ ש) shemittah)”, African Journal of Local Societies Initiative  (LOSI), Vol.8, No. 1, 1-15 (Makurdi: Benue State University). \n"
    "19. **Ajah, M. (2018) “Reverse Mentoring in Biblical Scholarship in the light of 1 Kings  5:1-14”, African Journal of Biblical Research Vol. 5. 141-174, (Biblical Research  Forum of Nigeria, BRESFON). \n"
    "20. **Ajah, M. (2018) “Deuteronomic Tithe Laws and their Humanitarian Implications for  Christian Communities in Africa”, Stellenbosch Theological Journal, Vol. 4, No 2, 335– 358. (University of Stellenbosch, South Africa). DOI:"
    "http://dx.doi.org/10.17570/stj.2018.v4n2.a16. Online ISSN 2413-9467 | Print ISSN  2413-9459. \n"
    "21. **Ajah, M. (2018). “The Land as a Grant in Deuteronomy and Its Economic"
    "Implications for Africa”, African Journal of Local Societies Initiative (LOSI), Vol.7, No.  1, 48-73 (Makurdi: Benue State University). \n"
    "22. **Ajah, M. (2019) “Narratives of Violence in Numbers 25: Between Text and  Reception”, Insight: Journal of Religious Studies, Vol. 15, 17-31 (Babcock University,  Ilishan-Remo, Ogun State)."  ,
    textAlign: TextAlign.justify,
    style: TextStyle(fontSize: size),
    ),
    ),
    //End of Topic and Body
    // Begining of Topic and Body
    //Topic
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "(e) Articles that have already been accepted for publication  ",
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
    ),
    ),
    // Body
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "23. **Ajah M (2019). “Socio-Political Readings for Cult Centralization in Deuteronomy:  Lessons for Africa”, African Journal of Biblical Studies (AJBS), A Journal of Nigeria  Association of Biblical Studies; c/o: Department of Religious Studies, University of  Ibadan, Nigeria (Accepted for publication)." ,
    textAlign: TextAlign.justify,
    style: TextStyle(fontSize: size),
    ),
    ),
    //End of Topic and Body
    // Begining of Topic and Body
    //Topic
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "MAJOR CONFERENCES ATTENDED WITH PAPERS READ   ",
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
    ),
    ),
    // Body
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "(a) Ajah, M (2020). “The Concept of Cult Centralization in Deuteronomy and its Socio-Political  Implications for Africa Today”, Deuteronomy-Today e-Conference, South African Theological  Conference, 2-3 April 2020. \n"
    "(b) Ajah, M (2019).“David Adamo and Communal Reading as an Interpretive Method in African  Biblical Hermeneutics”, 2019 Annual Meeting of the Society of Biblical Literature, Convention  Centre, San Diego, CA, United States of America, November 23 – 26, 2019. \n"
    "(c) Ajah, M (2018). “Narratives of Violence in Numbers 25: Between Text and Reception”, Joint  Conference of Old Testament Societies hosted by the Oudtestamentisch Werkgezelschap in  Nederland en België (OTW) and Old Testament Society of South Africa (OTSSA), at the  Faculty of Theology and Religious Studies, University of Groningen, the Netherlands, 22nd– 24th August 2018. \n"
    "(d) Ajah, M (2018). “Globalisation and Religious Fundamentalism in Nigeria: Problems and  Prospects” authored by Akper, G. & Ajah, M. at the 15th General Assembly of the Council for the Development of Social Science Research in Africa (CODESRIA), December 17th– 21st December 2018 at King Fahd Hotel in Dakar, SENEGAL.  \n"
    "(e) Ajah, M (2016). “Conflicting Prophecies in 1 Kings 22 and 2015 Nigeria Election”, Annual  Conference of Biblical Research Forum of Nigeria (BRESFON), held at Methodist Theological  Institute, Umuahia, 1-3 November 2016 (Sponsored by NOUN). \n"
    "(f) Ajah, M (2016). “Reverse Mentoring in Biblical Scholarship in the light of 1 Kings 5:1-14”,  Triennial Congress of International Organization for the Study of Old Testament (IOSOT),  Stellenbosch University, 4-9 September, 2016 (Sponsored by Stellenbosch University, South  Africa). \n"
    "(g) Ajah, M& Okoronkwo, M. E. (2015). “Christian Theology Curriculum in National Open  University of Nigeria: Issues of Pedagogy and Assessment”, The 26th ICDE World Conference,  (UNISA 2015), University of South Africa, Sun-City, 14-16 October, 2015 (Self Registration). \n"
    "(h) Ajah, M (2014). “Promoting Open Educational Resources(OER) forTheological/Religious  Education in Nigeria”, 2nd International Conference on Open and Distance e-Learning  (ICOLDE 2014), 18-19 December, 2014 at Bangkok, Thailand (Sponsored by NOUN). \n"
    "(i) Ajah, M (2013). “Religious Education and Government Takeover/Return of Mission Schools in  Nigeria”, RE21- Religious Education in Global-Local World, University College Cork (UCC),  Ireland, 29-30 August, 2013 (Sponsored by University College Cork, Ireland). \n"
    "(j) Ajah, M (2013). “Love for the Stranger in Deuteronomy 10: 19 and It’s Socio-Cultural  Implications for Development in Nigeria”, Second Annual International Conference on:  Challenges of Development in Africa, Catholic University of Eastern Africa,Nairobi Kenya, 25- 29 June, 2013 (Sponsored by NOUN). \n"
    "(k) Ajah, M (2013). “A Theological Interpretation of Land as a Grant in Deuteronomy and its Implications for Stewardship in Nigeria”, OTSSA Conference, University of the Free State,  Bloemfontein, SA, 11-13 September, 2013 (Sponsored by Stellenbosch University, South  Africa). \n"
    "(l) Ajah, M (2013). “Mi Yodea: A Theological Reflection on the Book of Jonah in the Face of  National Insecurity”, Bi-Annual International Religious Studies, Conference, University Of  Ibadan, 14-17 April, 2013 Self sponsorship). \n"
    "(m) Ajah, M (2013). “Theological Interpretations Of Social Justice in the Book Of Deuteronomy  And their Implications For Nigeria”, 26th Conference of Nigerian Association of Biblical  Studies (NABIS), Life Theological Seminary, Ikorodu Lagos, 16-19 July, 2013 (Self  sponsorship). \n"
    "(n) Ajah, M (2013). “The role of religion in fostering social justice through distance education in  Nigeria”, UNED-ICDE (Universidad Nacional de Education a Distancia & International  Council for Open and Distance Education) International Conference, 7-9 March, 2013 (Self  Registration)." ,
    textAlign: TextAlign.justify,
    style: TextStyle(fontSize: size),
    ),
    ),
    //End of Topic and Body
    // Begining of Topic and Body
    //Topic
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "REFEREES /n"
    "1. Prof. David Adamo ",
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
    ),
    ),
    // Body
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    " Department of Religious Studies  \n"
    "Kogi State University, Ayingba",
    textAlign: TextAlign.justify,
    style: TextStyle(fontSize: size),
    ),
    ),
    //End of Topic and Body
    // Begining of Topic and Body
    //Topic
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "2. Prof. Emele Mba Uka  ",
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
    ),
    ),
    // Body
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "Department of Religious Studies \n"
    "University of Calabar" ,
    textAlign: TextAlign.justify,
    style: TextStyle(fontSize: size),
    ),
    ),
    //End of Topic and Body
    // Begining of Topic and Body
    //Topic
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "3. Prof. Hendrik L. Bosman ",
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
    ),
    ),
    // Body
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "Department Old and New Testament  \n"
    "Faculty of Theology, Stellenbosch University, South Africa " ,
    textAlign: TextAlign.justify,
    style: TextStyle(fontSize: size),
    ),
    ),
    //End of Topic and Body
    // Begining of Topic and Body
    //Topic
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "SIGNATURE AND DATE",
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
    ),
    ),
    // Body
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text(
    "Signature:__________ Date:24th August 2021 " ,
    textAlign: TextAlign.justify,
    style: TextStyle(fontSize: size),
    ),
    ),
    //End of Topic and Body


    ],
    ),
    );
  }
}

