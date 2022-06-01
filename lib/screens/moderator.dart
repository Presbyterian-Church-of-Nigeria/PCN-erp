import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:pcn_erp/bible/utils/constants.dart';
//import 'package:flutter/cupertino.dart';


/// Represents Homepage for Navigation
class Mod extends StatefulWidget {

  @override
  _Mod createState() => _Mod();
}

class _Mod extends State<Mod> {
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
        title: Text('Prelate & Moderator'),
          // TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)

        //actions: <Widget>[
         // IconButton(
         //   icon: Icon(
          //    Icons.bookmark,
         //     color: Colors.white,
       //     ),
        //    onPressed: () {
        //      _pdfViewerKey.currentState?.openBookmarkView();
       //     },
       //   ),
       // ],
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
                              height: 250,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/moder2.jpeg'),
                                  ))),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "His Eminence Nzie Nsi Eke\n( The Prelate & Moderator Of General Assembly)",
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
            "Jeremiah, the Prophet notes: \n Before I formed thee in the belly I knew thee and before thou camest forth out of the womb I sanctified thee and ordained thee a prophet unto the nations (Jer. 1:5)",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: size,
              color: Colors.blueAccent,
            ),
          ),
        ),
        SizedBox(height: 0.1,),
        Container(
          child: Text(
            "The Lord in every generation lifts up persons he would use to bless humankind. Such persons predestined by God may be prepared for their divine assignment via sundry experiences. This is the story of Nzie Nsi Eke, now His Eminence, the Prelate of thePresbyterian Church of Nigeria and the Moderator of the General Assembly.",
            style: TextStyle(
              fontSize: size,
            ),
          ),
        ),

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
              "BIRTH AND EARLY LIFE:",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
                ,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "There was joy unspeakable in the family of Mr. Nsi and Madam Oma Eke (Nee Kalu) and indeed entire Ndi-Ibe Ohafia, in Ohafia Local Government Area of Abia State, Nigeria at the arrival of a baby boy on September 25, 1952, because the mother has sought with tears for a baby boy having been blessed with no male child until this special day.He began his education at the Ambele Primary School, Ohafia which served the three communities of Amuma, Ndi-Ibe and Ufiele Ohafia. He later had his secondary education at the Triumph Secondary School, Asaga, Ohafia in Abia State.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "EARLY CAREER AND MINISTRY:",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),

            child: Text(
                "On graduation from secondary school, the young Nzie started his career as an office manager of the St. Andrew’s Presbyterian Church of Nigeria,\n No. 1 Azikiwe Road Aba, Abia State and served there until the year 1979 when he gained admission into the Trinity (Union) Theological College, Umuahia in the then Imo State (now Abia State), Nigeria, for ministerial Training from where he graduated with Diploma in Theology (WAATI – 1982). As was the practice then, the said Mr. Nzie Nsi Eke was licensed to preach the Word by the Synod (now General Assembly) where Moderators of Presbyteries presented their candidates to the Synod for licensing. In his case with his colleagues, the venue was the Hope Waddell Training Institution Chapel, Calabar, in July11982 and the officiating Moderator was the then Synod Moderator (now General Assembly) being a Synod service.\n\n Having been licensed he served his probation at Enugu Parish and was supervised by Rev. Itan Edem of blessed memory. In July 1983 he was ordained into the Holy Ministry of the Word and Sacrament at St. Andrew’s Presbyterian Church, Uwani, Enugu by the Enugu Presbytery.\n "
                    "After his ordination he was sent to Nigercem Nkalagu and later to Onitsha under Enugu Parish. In the year 1984 he was posted to the Presbyterian Church of Nigeria, Yaba Parish (Ikeja Congregation) as an Associate Minister. While there he had the opportunity of serving under their Eminences, Prelate Emeriti Inya Okata Agha Ude and James Udeogu Ukaegbu (both of blessed memory) who were at different times Minister-in-Charge of the Lagos Presbyterian Church, Yaba Parish. It may not be an overstatement to opine that the Rev. Nzie Nsi Eke contacted various degrees of graces from these Church fathers who were both men of God with impeccable probity and honesty. Their zeal for the Master whom they believed in and lived for was too contagious to be ignored. Their lives and Ministries positively influenced the life and Ministry of Rev. Nzie Nsi Eke. \n\n"
                    " It is worthy of note that he has not served in any other profession outside the Church, though in various forms. He has always been in the office or the Parish or both together. He is among the very few who have been so privileged to serve God at various levels of the Presbyterian Church of Nigeria and Ecumenical Bodies.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
              //maxLines: 5,
              //overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "FURTHER EDUCATION AND MINISTRY:",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),

            child: Text(
              "He proceeded to further his study at the Theological College of Northern Nigeria (TCNN) an affiliate of University of Jos in the year 1989 where he bagged a Bachelor in Divinity in 1990 (2nd Class Upper) and his quest for further knowledge motivated him to obtain a Masters Degree (MA) in Religion from University of Nigeria, Nsukka, in 2007; he also holds a Post Graduate Diploma in Clinical Psychology and a Post Graduate Certificate in Crisis Management (Minnesota, USA.\n"
             "Before he went to the USA for further studies he had served the Church as the Deputy Clerk of the General Assembly. \n He understudied Rev. Richard Fee of Presbyterian Church in Cananda, the then Deputy Clerk and took over from him before his return to Canada. During his time as the Deputy Clerk he started with E.U. Onwuchekwa, then Principal Clerk and later with Prelate Emeritus, His Eminence, Dr. Ubon Bassey Usung as the Principal Clerk. The Church was still using manual typewriter and stencil duplicator. They had to work tirelessly to ensure minutes, letters and other publications were ready on time and dispatched to various Synods, Presbyteries and Parishes. Sometimes he had to work late into the night just to ensure that documents were ready on time.\n" "On his return from the study at the Minnesota, USA he was posted to the Akanu Ibiam Memorial Presbyterian Church of Nigeria, Unwana in Ebonyi State. \n"
            "He was later transferred to Abakaliki Urban Parish Still in Ebonyi State. It was during his tenure as the Minister of Abakaliki Urban Parish that the Parish started using the present worship place at St. Peter’s PCN, Kpirikpiri as the membership continued to grow and the old Church hall became small to accommodate worshipers. He took the bull by the horn by leading the congregation to move into the uncompleted building after the pillars were raised while canopies were pinned inside the Church hall to provide shade during Sunday worship services while work continued during week days on the building.\n"
            "It is worthy of note that while he was the Parish Minister he was the Synod Moderator of the East Central Synod while the area covered by the Mid-East Synod was yet together as East Central Synod. It was during his tenure as the East Central Synod Moderator that the Mid-East Synod was inaugurated on May 11, 2003.\n\n"
            "On completion of his tenure at Abakaliki Urban Parish, he was transferred to the Presbyterian Church of Nigeria, Apapa Parish in Lagos, Synod of the West. While serving in Apapa Parish, Synod of the West elected him to serve as the Synod Moderator. He was later transferred to the Presbyterian Church of Nigeria, Enuegu Parish, Okposi in Ebonyi State, Mid-East Synod. It is noteworthy that Rev. Nzie Nsi Eke never rejected to serve any where he was posted to by the Church.\n"
           " While still serving at the Enuegu Parish, he was nominated by the Mid-East Synod whose turn it was to produce (as it was then) the Moderator of the General Assembly. As at then, the Synod was to nominate one of the Ministers serving within their bound who meets the qualifications for the said office."
             "Owing to some issues which are beyond the scope of this work, he was given the mandate six years later precisely in a General Assembly meeting of August 2016 at the Lagos Presbyterian Church of Nigeria, Yaba, Lagos State, Synod of the West. By a majority vote of 485 for and 2 against he succeeded His Eminence, Most Rev. Prof. Emele Mba Uka as the Prelate of the Presbyterian Church of Nigeria and the Moderator of the General Assembly, which office he has occupied for over four years now. During these years in"
                "office as the Moderator of the General Assembly, His Eminence, Nzie Nsi Eke (JP) has brought his wealth of experience to bear as a servant-leader. It has been eventful and challenging years. His training in crisis management has been a reliable reservoir for insights in handling a lot of issues for both individuals and groups. The ease and tact with which he handles crises-prone cases is always amazing.\n"
        "The story and experience of His Eminence, Nzie Nsi Eke is one of “though your beginning was small, yet your latter end would increase abundantly” (Job 8:7 NKJV).\n"
    "He narrated the story of how he carried his box to Nigercem, Nkalagu to report on his first posting and had to live in one small room with no bathroom inside apart from an improvised bathroom that he had to use mat or wrapper to cover part of it when he wants to make use of it. When he was posted to Onitsha, his colleague who was pastoring an Anglican Church came to visit him and discovered that he had no accommodation and had to arrange for a room for him until the Church was able to get him a place. In the midst of all these, he was always cheerful and serving God sacrificially and honestly.\n"
                "He has the fear of God and would never desire let alone scheme to have what is not his. He is a man of unquestionable contentment who can stoop low to serve anybody. His life story teaches with clarity that “no man takes this honour to himself, but he who is called by God just as Aaron was (Heb. 5:4)."
    "God sees and rewards our labour of love as we serve Him and continue to serve. His life proves the truth of God’s Word. “Humble yourself therefore under the mighty hand of God that He may exalt you in due time” (1Pet.5:6)."
    "His Eminence, Nzie Nsi Eke is a man of indefectible humility. He recognizes that it is all about the grace of God that one becomes anything in life and therefore there is no ground for boasting about anything as if it is by self effort. For him, it must be about God and God alone.",




              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
              //maxLines: 5,
              //overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "FAMILY LIFE:",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "He is married to the love of his life, Elder (Mrs) Chinyere Nzie Eke who has always been a godly counselor by his side all through the thin and thick of his life and ministry. She always ensures that the home front is well guarded against the invasion of the enemy while the husband is battling at the field. \n The marriage is blessed with two girls and a boy with numerous sons and daughters in the Lord.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "REFERENCES:",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "Eke, Nzie Nsi (2020). An Oral History from His Eminence, Nzie Nsi Eke (JP); the Prelate and General Assembly Moderator.\n"
                  "The Presbyterian Church of Nigeria (2016), Programme of Installation of the Rev. Nzie Nsi Eke as the Prelate and Moderator of the General Assembly, Presby Press Ltd.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
            ),
          ),

        ],
      ),
    );
  }
}

