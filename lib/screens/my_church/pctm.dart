//import 'package:animated_text_kit/animated_text_kit.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pcn_erp/bible/utils/constants.dart';
import 'package:pcn_erp/nav/nav.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class Pctm extends StatefulWidget {
  //const Pctm({Key? key}) : super(key: key);

  @override
  _PctmState createState() => _PctmState();
}

class _PctmState extends State<Pctm> with TickerProviderStateMixin {
  static const spacer = 5.0;
  static const size = fontSize - 0.2;

  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 4, vsync: this);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //backgroundColor: Colors.transparent,

        title: Text(
          'PCTM',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),

        centerTitle: true,
        flexibleSpace: ClipRRect(
            //
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30)),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/pctm.jpeg'),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.darken))),
            )),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50))),
        actions: <Widget>[
          // Using Stack to show Notification Badge
        ],
      ),

      //extendBodyBehindAppBar: true,

      drawer: Navbar(),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
         child: Column(
         children: [
              Container(
                //color: Colors.blueAccent,
            child: TabBar(controller: _tabcontroller, unselectedLabelColor: Colors.black, labelColor:Colors.blue,tabs: [
              Tab(

                text: "About", icon: Icon(Icons.home)

              ),
              Tab(

                text: "Profile",
                icon: Icon(Icons.account_circle_outlined)
                ,
              ),
              Tab(
                  text: "Events",
                  icon: Icon(Icons.event_available_sharp)

              ),
    Tab(
    text: "Contacts",icon: Icon(Icons.contacts)

    ),

            ]),

          ),
          SizedBox(height: 10.0,),
          Container(
            child: _home(),
    ),
     ] ),

        )));
  }

  _home() {
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
    return
      Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Image.asset(
            "assets/pctm.jpeg",
            height: 180,
            width: 180,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "PCTM",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: size * 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
        ), Divider(
          color: Colors.black26,
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("History",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "The Presbyterian Church of Nigeria this year, 2022 will be 176 years in Nigeria. What started on 10 April, 1846 as Calabar Mission has grown to become The Presbyterian Church of Nigeria with ten regional Synods, over 60 Presbyteries and about 500 Parishes within and outside of the Nigerian soil. Within this period, although early missionaries showed interest in the development of children through the establishment of schools, the Church did not make any concerted efforts towards the establishment of Children Ministry.\n"
                " The earliest effort to standardize and institutionalize Children Ministry in the PCN was by making it one of the functions of the Board of Church Life (BCF), now Congregational Ministries Department (CMD). BCF was asked to organize different programmes such as Bible quizzes, to motivate the children. By this period, the training of teachers was solely rested on individual Parishes and Presbyteries. Later, Rev. Mrs Arlene Onuoha, a Canadian Missionary who was involved in the Diaconate Ministry and serving at that time in Hugh Goldie Lay Training Centre, Arochukwu (now Hugh Lay/Theological Training Institution, Arochukwu) started training teachers for Children’s Ministry and the production of teaching aids and materials. Between the years, 1989 and 1991 while Rev. \n Mgbeke George Okore was the Rector of Hugh Goldie Lay Training Centre where General Assembly evangelists were being trained at the time, she developed the first widely used Children’s Bible study outline. It was used mostly by Parishes in the then East Synod. In addition to developing the lessons, she organized teachers’ training sessions and produced teaching aids to go with the lessons."
                "This period was characterised with: \n"
                " (a) dependence on study materials from the Children Evangelism Ministry (CEM) and Scripture Union;\n"
                " (b) development of materials by individual Parishes; \n"
                " (c) Repetition of lessons and Bible stories;\n"
                " (d) only singing, dancing and story-telling; \n"
                " (e) allowing children to be part of the main service; \n"
                " (f) many Parishes had no Children Sunday School halls and where they were available they were inadequate spaces and poorly managed;\n "
                " (g) no well trained teachers; \n"
                " (h) no Parish, Presbytery, Synod and National Coordinator.\n"
                "The first National Children’s Coordinator, the Rev. Israel Brian Izuogu was appointed by the GAEC meeting of February 2004, through the recommendation of the Board of Faith and Order (BFO). By this period, there was no National Children Desk’s Central Working Committee and the activities of the Children’s Ministry were not yet constituted into a Desk. It was during the General Assembly meeting of August 2008 at Arochukwu, through the recommendation of the then outgoing Principal Clerk, Rev Dr Benebo Fubara Fubara-Manuel, Music Desk, Presbyterian Students’ Fellowship Directorate, the Directorate of Lay Development and Training were created and along with their coordinators, Rev Ndukwe Daniel Ndukwe was appointed the Children’s Desk Coordinator. However, he started work in September 2009. The first Central Working Committee of the Desk had her first meeting in Enugu with only 5 Synods (Akwa, Calabar, East Central, South Central and West) out of 9 Synods in attendance. Currently, all the 10 Synods are well represented in the CWC. \n"
                " In 2015, Rev. Daniel Ndukwe was succeeded by Rev. Esther Ovat. And in 2021, the Rev. John Chima Orioha, PhD succeeded Rev. Esther Ovat.\n"
                "Some of the major achievements within the period that the Children Desk was constituted include: \n"
                "(a) production of the first unified Children’s Bible Study Guide; \n"
                "(b) the National Children’s Bible Quiz was also introduced (categories, under 13, under 17 and under 19);\n"
                "(c) organization of Teachers’ Training workshops were subsequently organized in different Synods;\n"
                "(d) two separate outlines were produced: a workbook for the junior/toddler class and study manual for the senior class; \n"
                "(e) the organization of the national children conference \n "
                "(f) Establishment of Teens Church in some Parishes, most especially, our mega Parishes and others.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: size - 1),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("Our Vision Statement",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "That every child will grow up to be a true disciple of Jesus Christ, in a healthy Christian home, community, and Church,\n where his/her developmental needs are holistically provided.\n",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: size),
            //maxLines: 5,
            //overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("Our Mission Statement",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "The Children’s Ministry of the Presbyterian Church of Nigeria will collaborate with others to bring children into the saving power of our Lord Jesus Christ; \n and nurture them to grow physically, intellectually, emotionally, socially and spiritually, into Christian maturity.\n",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("Our Core Objectives",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            " The Children’s Ministry’s mission statement can be broken down into seven key objectives. \n These are stated below: \n"
                " i. That the unsaved child is won for Christ.\n"
                "ii. That the child develops his/her full potential in life\n"
                "iii. That the saved child is regularly assured of his/her salvation and grows up into Christian maturity\n"
                "iv. That the needs of needy children within and outside the Church are met.\n"
                "v. That unsaved parents and guardians are reached for Christ.\n"
                "vi. Christian parents and guardians are educated on how to bring up their children as Christians.\n"
                "vii. That the rights and needs of children are promoted in the Church and society at large.\n",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: size),
          ),
        ),

        SizedBox(
          height: 0.1,
        ),
      ],
    );
  }

  Widget _info() {
    return Padding(
      padding: const EdgeInsets.all(spacer),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
          Widget>[

        Container(
          child: ExpansionTileCard(
            elevation: 5.0,
            baseColor: Colors.cyan[50],
            expandedColor: Colors.red[50],

            title: Text(
              "Rev. John Chima Orioha, PhD",
              style: TextStyle(fontSize: 17.5),
            ),
            subtitle: Text(
              "NATIONAL DESK COORDINATOR ",
              textAlign: TextAlign.center,
            ),
            children: [
              Divider(
                thickness: 1.0,
                height: 1.0,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 10.0),
                      child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: spacer),
                              child: Text("Profile",
                                  textAlign: TextAlign.center,
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: size * 0.8)),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: spacer),
                              child: Text(
                                " • 10 years of service as a theological tutor with special interest in Biblical Studies.\n"
                                    "• 14 years of pastoral and leadership experience in Christian ministry in Nigeria and Scotland.\n"
                                    "• Licensed into the ministry of the Word by the Presbyterian Church of Nigeria on Sunday, 5th August 2012.\n"
                                    "• Ordained as a minister of the Word and Sacrament by the Presbyterian Church of Nigeria on Sunday, 14th November, 2016.\n",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: size),

                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: spacer),
                              child: Text("Post-Secondary Education",
                                  textAlign: TextAlign.center,
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: size * 0.8)),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: spacer),
                              child: Text(
                                " 2021	University of Uyo, Uyo, Akwa Ibom State, Nigeria\n PhD in Biblical Studies (Old Testament)\n"
                                    " 2020	Nordic Ecumenical Network on International Freedom of Religion or Belief \n Certificate on Freedom of Religion or Belief (FORB) Training of the Trainer’s Course.\n"
                                    " 2018	Global Ecumenical Theological Institute, hosted by Faculty of Theology of the Tumaini University,\nMakumira, Tanzania by World Council of Churches\n"
                                    " 2017 	WCC Eco-School on Water, Food and Climate Justice Lilongwe, Malawi.\n"
                                    "2016 	Abia State University, Uturu, Abia State, Nigeria \n Bachelor of Arts (First Class) in Religion\n"
                                    "2015 	University of Edinburgh, United Kingdom \n MSc in Biblical Studies\n"
                                    " 2012	Hugh Goldie Lay/Theological Training Institution, Arochukwu, Abia State.\n Bachelor of Divinity (First Class)-Theology",

                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: size),

                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: spacer),
                              child: Text("Work Experience",
                                  textAlign: TextAlign.center,
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: size * 0.8)),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: spacer),
                              child: Text(
                                "Sept, 2021 to present: The National Children’s Desk Coordinator, The Presbyterian Church of Nigeria"
                                    "Some of the duties include:\n"
                                    "• Development of resources for children ministry and evangelism;\n"
                                    "• Training of human resources for children ministry and evangelism;\n"
                                    " • To harness both human and material resources for the development of children ministry;\n"
                                    "• To call for, and chair the quarterly meetings of the National Children’s Desk\n"
                                    "• To implement the decisions and policies of the church on children ministry\n"
                                    "• To ensure that the children are developed wholistically: \n"
                                    "spiritually, mentally, emotionally, academically, socially and otherwise.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: size),

                              ),
                            ),

                          ]))),
            ],
          ),
        ),
        SizedBox(
          height: 2.0,
        ),
        Container(
          child: ExpansionTileCard(
            elevation: 5.0,
            baseColor: Colors.cyan[50],
            expandedColor: Colors.red[50],
            title: Text(
              "Rev. Israel B. Izuogo",
              style: TextStyle(fontSize: 17.5),
            ),
            subtitle: Text(
              "First National Children’s Desk Coordinator ",
              //textAlign: TextAlign.center,
            ),
            children: [
              Divider(
                thickness: 1.0,
                height: 1.0,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10.0),
                    child: Text(
                          " ",
                      style: TextStyle(fontSize: 18),
                    ),
                  )),
            ],
          ),
        ),
        Container(
          child: ExpansionTileCard(
            elevation: 5.0,
            baseColor: Colors.cyan[50],
            expandedColor: Colors.red[50],
            title: Text(
              "Rt Rev. Daniel Ndukwe",
              style: TextStyle(fontSize: 17.5),
            ),
            subtitle: Text(
              "Second National Children’s Desk Coordinator ",
              //textAlign: TextAlign.center,
            ),
            children: [
              Divider(
                thickness: 1.0,
                height: 1.0,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10.0),
                    child: Text(
                      "The Rev. Daniel Ndukwe was born over two and a half score years ago in Tiko, South West Province of Cameroun to the family of Mr & Elder Mrs Ndukwe Kalu of Amangwu-Ohafia, Ohafia LGA, Abia State.\n"

                      "He had his Primary Education in Government School, Tiko Town and St. Anthony Catholic School Owe.\n He attended Government High School, Tiko now Government Bi-Lingual High School, Tiko."

   " Upon graduation from Trinity Union Theological College Umuahia in 1997, \n he was licenced as a Minister of The Presbyterian Church of Nigeria and posted to Bukuru, Jos Parish where he served as a probationer for one year. \n He later studied Computer Engineering in Enugu State University of Science and Technology, ESUT, Enugu.\n"

    "Parish Experience\n"
   " Rev. Ndukwe served as a Minister-in-Charge Karmo Parish, \n Abuja (1998-2001). Minster-in-Charge Onueke Parish (2002-2005),\n Minister-in-Charge Nike Parish, Enugu (2006-2010). In January 2011, \n he was posted on a rescue mission to St. Paul's Congregation New Heaven Parish Onitsha and within seven months by the grace of God, St. Paul was worked up into Parish status. \n From there, he was posted as Chaplain to Chapel of Glory, Ebonyi State University, Isieke Campus. \n From Chapel of Glory, he was posted to PCN Efut Ekondo Parish 2011 – 2015. \n He was the Minister-in-Charge of PCN Efut Abua Parish from September 2015 to December 2016. \n Assistant Resident Minister/Minister-in-Charge Christ Church Port Harcourt, \n Yenagoa Branch, January 2017 to December 2019 and Minister I charge Effurun Parish,2020 to 2021.\n"

    "The Rev. Daniel Ndukwe is gifted in prayer and has been a resource person/speaker in many prayer conferences within and outside Nigeria. \n He has been identified as a man with a notable dynamic children/youth ministry. \nHe is a dynamic preacher of the word, who is very passionate about revival and church growth.\n",

                      style: TextStyle(fontSize: 18),
                    ),
                  )),
            ],
          ),
        ),
        Container(
          child: ExpansionTileCard(
            elevation: 5.0,
            baseColor: Colors.cyan[50],
            expandedColor: Colors.red[50],
            title: Text(
              "Rev. Israel B. Izuogo",
              style: TextStyle(fontSize: 17.5),
            ),
            subtitle: Text(
              "Third National Children’s Desk Coordinator ",
              //textAlign: TextAlign.center,
            ),
            children: [
              Divider(
                thickness: 1.0,
                height: 1.0,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10.0),
                    child: Text(
                      " ",
                      style: TextStyle(fontSize: 18),
                    ),
                  )),
            ],
          ),
        ),


         SizedBox(
          height: 10.0,
        ),


        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("CONTACTS OF CWC MEMBERS",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
            margin: EdgeInsets.all(10),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(children: [
                  Text('Synod',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Coordinator',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Contact',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                TableRow(children: [
                  Text('National Children’s Coordinator ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('Rev. John Chima Orioha, PhD',
                      textAlign: TextAlign.center),
                  Text('+2348100171026', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Akwa Synod', textAlign: TextAlign.center),
                  Text('Mrs Idorenyin James', textAlign: TextAlign.center),
                  Text('+2347068018500/+2348023455408',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Niger Delta', textAlign: TextAlign.center),
                  Text('Rev. Promise Ollawa ', textAlign: TextAlign.center),
                  Text('+2347084141654 / +2348034025540',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Calabar Synod', textAlign: TextAlign.center),
                  Text('Elder Dr. Iso E. Iso', textAlign: TextAlign.center),
                  Text('+234 803 090 3414', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('North', textAlign: TextAlign.center),
                  Text('Elder Lucy Dickson', textAlign: TextAlign.center),
                  Text('+2348032890529',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('East Synod', textAlign: TextAlign.center),
                  Text('Rev. Ogbonne Chinedu Ukpai',
                      textAlign: TextAlign.center),
                  Text('+2348134567898',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('South Central', textAlign: TextAlign.center),
                  Text('Rev. Elizabeth Uguru', textAlign: TextAlign.center),
                  Text('+2348065361440',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('East Central', textAlign: TextAlign.center),
                  Text('Engr. Ndubuisi Onyeani Agwu',
                      textAlign: TextAlign.center),
                  Text('+2348037622483/+2348020967968',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Upper Cross', textAlign: TextAlign.center),
                  Text('Elder Ewa Usani', textAlign: TextAlign.center),
                  Text('+23480667382',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Mid-East Synod', textAlign: TextAlign.center),
                  Text('Rev. Joseph Awa Eze', textAlign: TextAlign.center),
                  Text('+2347065151437',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('West', textAlign: TextAlign.center),
                  Text('Elder Akaninyene Obot', textAlign: TextAlign.center),
                  Text('+2348034102370',
                      textAlign: TextAlign.center),
                ]),

              ],
            )),
    Container(
    padding: EdgeInsets.only(top: spacer),
    child: Text("2022 Reserved Dates",
    textAlign: TextAlign.center,
    style:
    TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
    ),
    Container(
    margin: EdgeInsets.all(10),
    child: Table(
    border: TableBorder.all(),
    children: [
    TableRow(children: [
    Text('Dates',
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold)),
    Text('Events',
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold)),
    ]),
    TableRow(children: [
    Text('February 10, 2022 ',
    textAlign: TextAlign.center,
    style: TextStyle(fontWeight: FontWeight.bold),),
    Text('CWC Meeting Virtual',
    textAlign: TextAlign.center),
    ]),
    TableRow(children: [
    Text('May 7, 2022', textAlign: TextAlign.center),
    Text('CWC Meeting', textAlign: TextAlign.center),

    ]),
      TableRow(children: [
        Text('May 23-29, 2022', textAlign: TextAlign.center),
        Text('Children’s Emphasis Week', textAlign: TextAlign.center),

      ]),
      TableRow(children: [
        Text(' July 2, 9, 16, 23, 30', textAlign: TextAlign.center),
        Text('Proficient Course in Children Ministry', textAlign: TextAlign.center),

      ]),

      TableRow(children: [
        Text('Nov. 3, 2022', textAlign: TextAlign.center),
        Text('CWC Meeting', textAlign: TextAlign.center),

      ]),

    ])
    ),


    SizedBox(
          height: 2.0,
        ),

        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("2022 National Bible Quiz Competition",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            " a. Following the recent decision of GAEC, there will be no national Bible quiz competition in 2022. \n"
              " b. Books for Bible Quiz Competition \n\n"
                    "i. Under 19 Category: Jeremiah / Romans -RSV\n"
                    " ii. Under 17 Category: Daniel / I Corinthians –RSV\n"
                    "iii. Under 13 Category: Bible Study Guide (Questions will be answered according to the way it is written in the manual).\n"
        "c. Presbyteries and Synod Coordinators should prepare questions for the quiz competition at their level and choose a suitable date for their quiz.\n",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: size - 1),
          ),
        ),

      ]),
    );
  }
}
