//import 'dart:ui';

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:pcn_erp/bible/utils/constants.dart';
//import 'package:pcn_erp/screens/reserved_dates.dart/almanc.dart';
//import 'package:flutter/cupertino.dart';

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
        //backgroundColor: Colors.transparent,

        title: Text(
          'MCA',
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
                      image: AssetImage('assets/mcapcn.jpg'),
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
      body: SingleChildScrollView(
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
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
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
          padding: EdgeInsets.only(top: spacer * 3, bottom: spacer * 2.0),
          child: Text(
            "",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: size - 1,
              // color: Colors.blueAccent,
            ),
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
        Divider(
          color: Colors.black26,
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("INTRODUCTION",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "The Men’s Christian Association (MCA) is an arm of the Presbyterian church of Nigeria made up of adult males in the church. Every male member of the church above thirty years is qualified to be enlisted into the MCA.\n"
            "MCA is a strong pillar of the church that provides leadership in the church spiritually and financially. The Arm promotes and co-ordinates men's activities in the church and provides opportunities for Christian fellowship that aids spiritual growth of the members.\n"
            "In addition to promoting evangelism of the gospel in obedience to The Great Commission and, encouraging the economic growth of men, other objectives of MCA include:\n"
            "•	To promote fellowship and Bible Study\n"
            "•	To promote and foster Christian principles within their membership\n"
            " •	To encourage MCA members to give Spiritual, Moral and Financial support to the churches\n"
            "•	To promote cooperation with other organizations within The Presbyterian Church\n"
            " •	To promote cooperation with Men’s Association of other Christian Churches.\n"
            " •	To promote such activities as will aid the spiritual progress of the MCA and the cooperation of The Presbyterian Church of Nigeria.\n",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: size - 1),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("LEADRSHIP STRUCTURE OF MCA",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "The Men’s Christian Association (MCA) exists at all levels of the Church, viz:\n"
            " •	Parish \n"
            "•	Presbytery\n"
            "•	Synod \n"
            " •	National Body otherwise called the Central Working Committee (CWC)\n"
            " Each level has a defined leadership structure with members to elected serve as executives for defined number of years. Each level of leadership is subjected to the authority of the next hierarchy of leadership.\n"
            " At the Parish level, the MCA is supervised by a Ruling Elder appointed by the Kirk Session of the Parish in consultation with the Parish MCA.\n"
            " At the Presbytery and Synod Levels, Coordinators are appointed by the respective Presbytery and Synod to supervise the activities of the Arm.\n"
            "At the National Level (CWC), the National Desk Coordinator appointed by the General Assembly with due consultation of the leadership of the CWC supervises the activities of the Arm.\n"
            "Aside the Parish level, representation at the other levels of the Arm is collegiate as specified in the Constitution of MCA.\n",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: size),
            //maxLines: 5,
            //overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("PROGRAMMES OF MCA",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "•	Producing yearly Bible Study Guide for the men,\n"
            "•	Enriching the spiritual life of men through the organization of Biennial International Conferences.\n"
            "•	Producing National Programme for the celebration of Father’s Week.\n"
            "•	Make regulations that guides the spiritual wellbeing of the men.\n"
            "•	Organizing Entrepreneurial skill acquisition and Health Seminars for the benefit of members.\n"
            "•	Working with the leadership of the General Assembly to promote the spiritual, administrative and physical growth of the Church.\n"
            "•	Construction of Lecture Hall at the Hope Waddell University Site – Still on-going.\n"
            " •	Development of Enterprise Resource Programme (ERP) for the Church.\n"
            "•	Enhancing information dissemination and communication through the establishment of Internet Radio by Synod of the West MCA named SW-MCA Radio.\n"
            "•	Production of yearly devotional guide by Synod of the North MCA.\n"
            "•	Support for the planting of new Churches through financial donations.\n",

            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: size),
            //maxLines: 5,
            //overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("HISTORY & RECORDS",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("DIRECTORY OF DESK COORDINATORS",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: size * 0.8)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "•	Rev. Dr. Ubong Eyo	  2002 - 2005\n"
            "•	Rev. Dr. Torty Onoh		2005 - 2011 \n"
            "•	Rev. Sunday Agara 	  2011 – 2017\n"
            "• No Desk Coordinator	 2017 – 2018\n"
            "•	Rev. Sunday Eke Ole		2019 – Date\n",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: size),
            //maxLines: 5,
            //overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("DIRECTORY OF CWC CHAIRMAN-IN-SITTING/NATIONAL CHAIRMAN",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: size * 0.8)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "•  Chairmanship was rotational	 2002/2003\n"
            "•	Late Elder Essien Isaac		2003/2004\n"
            "•	Elder Richard Ezeoke		2004/2005\n"
            "•	Late Elder Kalu Eziyi		2005/2006\n"
            "•	Elder F. K. Ottah			2006/2007\n"
            "•	Elder Lawrence B. Ayuk	2007/2008\n"
            "•	Elder Okoro Ugo		2008/2009\n"
            "•	Elder Obong Okon Usungurua	2009/2010\n"
            "•	Elder Richard Ezeoke	2010/2011\n"
            "•	Elder Samuel Ejere Uko	2011/2012\n"
            "•	Elder Emmanuel Ewa		2012/2013\n"
            "•	Elder Chukwuemeka Awa		2013/2014\n"
            "•	Elder Engr K. Orji			2014/2015\n"
            "•	Elder Joshua Okorie 			2015/2016\n"
            "•	Barr. William Antigha		2016/2017\n"
            "•	Elder Joseph Asanga			2017 - 2020 \n"
            "•	Elder Engr. Awa Eke Osonwa	2020 – Date\n",

            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: size),
            //maxLines: 5,
            //overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("PAST MCA BIENNIAL INTERNATIONAL CONFERENCES",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: size * 0.9)),
        ),
        Container(
            margin: EdgeInsets.all(10),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(children: [
                  Text('YEAR',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('HOST SYNOD',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('VENUE',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                TableRow(children: [
                  Text('2003-2013', textAlign: TextAlign.center),
                  Text('', textAlign: TextAlign.center),
                  Text('', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('2015', textAlign: TextAlign.center),
                  Text('East Synod', textAlign: TextAlign.center),
                  Text('NYSC Orientation Camp, Igbere, Abia State',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('2017', textAlign: TextAlign.center),
                  Text('Synod of the West', textAlign: TextAlign.center),
                  Text('Kings College, Ikoyi, Lagos',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('2019', textAlign: TextAlign.center),
                  Text('Niger Delta Synod', textAlign: TextAlign.center),
                  Text('Redeemed Camp, Aluu, Port-Harcourt',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('2021', textAlign: TextAlign.center),
                  Text('Akwa Synod', textAlign: TextAlign.center),
                  Text('Bishop Monyargh Pastoral Center, Uyo',
                      textAlign: TextAlign.center),
                ]),
              ],
            )),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("PAST MCA CWC DELATES MEETINGS",
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
                  Text('Ref. No',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('HOST SYNOD',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('VENUE',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                TableRow(children: [
                  Text('1st - 68th ', textAlign: TextAlign.center),
                  Text('', textAlign: TextAlign.center),
                  Text('', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('69th', textAlign: TextAlign.center),
                  Text('Calabar Synod', textAlign: TextAlign.center),
                  Text('Ikot Ansa Parish, Calabar',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('70th', textAlign: TextAlign.center),
                  Text('Upper Cross River', textAlign: TextAlign.center),
                  Text('St Paul’s Parish, Mile 2, Ikom',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('71st', textAlign: TextAlign.center),
                  Text('Akwa Syond', textAlign: TextAlign.center),
                  Text('Uyo Model Parish, Uyo', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('72nd', textAlign: TextAlign.center),
                  Text('Niger Delta Synod', textAlign: TextAlign.center),
                  Text('Rumuomasi Parish, Port Harcourt',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('73rd', textAlign: TextAlign.center),
                  Text('Synod of the West', textAlign: TextAlign.center),
                  Text('Kings College, Onikan, Lagos',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('74th', textAlign: TextAlign.center),
                  Text('South Central', textAlign: TextAlign.center),
                  Text('First Aba Parish, No.1 Azikiwe Road, Aba',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('75th', textAlign: TextAlign.center),
                  Text('Mid-East Synod', textAlign: TextAlign.center),
                  Text('St Peter’s PCN Chaplaincy Parish, Uburu',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('76th', textAlign: TextAlign.center),
                  Text('Akwa Synod', textAlign: TextAlign.center),
                  Text('Bishop Monyargh Pastoral Center, Uyo',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('77th', textAlign: TextAlign.center),
                  Text('Calabar Synod', textAlign: TextAlign.center),
                  Text('Usang Iso Memorial Parish, IBB Way, Calabar',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('78th', textAlign: TextAlign.center),
                  Text('Niger Delta Synod', textAlign: TextAlign.center),
                  Text('Redeemed Camp, Aluu, Port Harcourt',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('79th', textAlign: TextAlign.center),
                  Text('East Synod', textAlign: TextAlign.center),
                  Text('PCN, Isiama Parish, Elu Ohafia',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('80th', textAlign: TextAlign.center),
                  Text('East Central', textAlign: TextAlign.center),
                  Text('St. Andrew’s Parish PCN, Enugu',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('81th', textAlign: TextAlign.center),
                  Text('Mid-East Synod', textAlign: TextAlign.center),
                  Text('PSt. Peter’s PCN, Amasiri Junction Parish',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('82th', textAlign: TextAlign.center),
                  Text('North Synod', textAlign: TextAlign.center),
                  Text('First Abuja Parish, Abuja',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('83th', textAlign: TextAlign.center),
                  Text('South Central', textAlign: TextAlign.center),
                  Text('World Bank Parish, Umuahia',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('84th', textAlign: TextAlign.center),
                  Text('Akwa Synod', textAlign: TextAlign.center),
                  Text('Uyo Parish, 73 Wellington Bassey Way, Uyo',
                      textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('85th', textAlign: TextAlign.center),
                  Text('Upper Cross River', textAlign: TextAlign.center),
                  Text('', textAlign: TextAlign.center),
                ]),
              ],
            )),
        Container(
          child: ExpansionTileCard(
            elevation: 5.0,
            baseColor: Colors.cyan[50],
            expandedColor: Colors.red[50],
            title: Text(
              "REV. SUNDAY EKE OLE, JP",
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
                        children:[ Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/Rev_Eke_Ole.jpg',
                                )))),
                    Text(
                      "Rev Sunday Eke Ole. Hails from Okpo Ihechiowa. Arochukwu LGA.Abia State. He is married to Deaconess Nnenna Eke Ole and blessed with children.\n"
                      "He was Licensed in 1995 and ordained in 1996. He has served in the Presbyterian church as Clerk and Moderator of different Presbyteries.\n One time clerk of synods of the East and North respectively. One time member of BPT now BPM and GAEC.\n He is presently member of BFO, CMD, Moderator Calabar Presbytery and Desk Coordinator Men's PCN.\n"
                      "He acquired his Diploma Certificate in University of Calabar and Trinity College Umuahia. Bachelor of Divinity University of Jos and Theological College of Northern Nigeria, Bukuru Jos, and Masters in Religion and Society from University of Nigeria Nsukka.\n"
                      "He have serve as Parish Minister in the following parishes: Idomi, Kaduna, Isiama Ohafia, Amaze in Arochukwu, Agbor in Delta State, Aladima in Owerri and currently serving in Garden Parish Calabar.\n"
                      "He is joyfully married and blessed with children.",
                      style: TextStyle(fontSize: 18),
                    ),
                  ]))),
            ],
          ),
          
        ),
        SizedBox(height: 2.0,),
                Container(
          child: ExpansionTileCard(
            elevation: 5.0,
            baseColor: Colors.cyan[50],
            expandedColor: Colors.red[50],
            title: Text(
              "ELDER ENGR. AWA EKE OSONWA, JP",
              style: TextStyle(fontSize: 17.5),
            ),
            subtitle: Text(
              "MCA CWC/NATIONAL PRESIDENT (2020 – 2023) ",
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
                        children:[ Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/engr_awa.jpg',
                                )))),
                     Text(
                      "Parentage: Elder Engr. Awa Eke Osonwa was born to the family of Late Teacher Eke Osonwa of blessed memory and Elder Mrs. Elizabeth E. Osonwa in Akanu Ohafia, Ohafia LGA, Abia State.\n"
                      "Education: He attended Community Primary School, Amangwu and Akanu Ohafia Secondary School both in Ohafia. \n He later furthered his study at the Federal University of Technology, Owerri where he obtained a Bachelor Degree (Honours) in Mechanical Engineering and a Master Degree in Engineering Management obtained at the University of Port Harcourt.\n"
                      "Church Life: Elder Osonwa worships at the Rumuomasi Congregation of the Presbyterian Church of Nigeria, Rumuomasi Parish. \n He is a committed members of the Parish and has served the Parish, Presbytery and Synod in various capacities, viz \n"
                        		"•	Rumuomasi Parish Board Chairman (2017 to date)\n"
                        	   "•	Rumuomasi Parish MCA President (2012 – 2014)\n"
                        	   "•	Port Harcourt North Presbytery MCA President (2017- 2019).\n"
                            "	•	Niger Delta Synod MCA President, (2019 - 2020) \n"
		"•	MCA CWC Chairman, President, (2020 to date) \n"
		"•	Honorary Patrons of the Boys’ Brigade, Garrison Battalion Council, Rivers State\n"
	   "•	2018 Co-icon of Rivers State Boys’ Brigade. \n" 
      "Profession: Engr. Osonwa is a Mechanical Engineer. He is a member of Nigerian Institute of Mechanical Engineers (NIMechE), \n member of Nigerian Society of Engineers (NSE) and a Registered Engineer with the Council for the Regulation of Engineering in Nigeria (COREN). \n His experience in the Oil and Gas field sector spans over twenty years. He is presently the Corporate Engineering Manager of Aveon Offshore Limited; a Port Harcourt based Construction Company.\n"
"Community and Social Life: Engr. Awa Osonwa’s commitment to the Church did not make him to refrain from discharging his social responsibilities to his community and society. \n He is actively involved in his Community development. Engr. Osonwa is presently the National Secretary of Adinti Age Grade and Secretary General of Akanu Ohafia Development Union. He is also a member of Oganifu Ugwuonyiregbe, an NGO that is engaged in alleviating the sufferings of the rural populace through her humanitarian gestures in Health and Education and welfare to the indigent.\n"
"Family Life: He is happily married to his one and only heartthrob, Juliet Orie Osonwa, and the union is blessed with children."

                      ,
                      style: TextStyle(fontSize: 18),
                    ),
                  ]))),
            ],
          ),
          
        ),
        SizedBox(height: 2.0,),
                Container(
          child: ExpansionTileCard(
            elevation: 5.0,
            baseColor: Colors.cyan[50],
            expandedColor: Colors.red[50],
            title: Text(
              "ENGR. OKECHUKWU AKANDU IDIKA",
              style: TextStyle(fontSize: 17.5),
            ),
            subtitle: Text(
              "MCA CWC/NATIONAL SECRETARY (2020 – 2023) ",
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
                        children:[ Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/okechwku.jpg',
                                )))),
                     Text(
                      "Born on 3rd of April, at Nsukka then Anambra, He hails from Ebem in Ohafia Local Government Area of Abia State. \n He attended Onuiyi Primary School, St. Teresa’s College Nsukka and Michael Okpara Federal University of Agriculture, Umudike, in Umuahia, Abia State. He successfully completed his NYSC in Oyo State.\n"
"After his NYSC at Oyo State he moved to Lagos and joined a telecommunication clearing house (Interconnect Clearinghouse Nigeria) as Billing System Analyst. \n After a few years with ICN, he moved fully into the telecommunication industry as a Billing System Specialist with INTEC with the sole consult on billing system for MTN. he later moved on with Telkom SA the sole owner of Multi-links Nigeria.\n"
"He was a member of the team that successfully deployed Sarbanes Oxley (SOX) which the legislation enacted in 2002 in response to the high-profile Enron and WorldCom financial and telecom scandals to protect shareholders and the public from accounting errors and fraudulent practices in the enterprise. \n This project plus other achievements gained him the National Colabo award Winner of the Best Staff of the year in the CIO department with an all-expense trip to South Africa for further Course in Computer Engineering and for the 2010 World Cup in South Africa.\n"
"His quest for advancement moved him upwards after spending some years of good and effective service in Multi-links Telkom to the maritime sector; he joined the Pacific International Lines (PIL NIGERIA LTD) as the HEAD OF ICT in Nigeria. \n He managed the end to end ICT business process of PIL and also a member of the management team from 2011 till Nov 2015 when he resigned and joined the Enugu Electricity Distribution Company EEDC as the Manager – Billing Operation, in February 2016 his performance gained him a recommendation which led to his redeployment as the Executive Technical Assistant to MD/CEO in the Cooperate Headquarters at Enugu, two months after he was recommended into another higher position as the Head Of Billing Systems in EEDC, this position by God’s grace he holds till date.\n"
"Okechukwu is highly proficient in the field of Information and Communication Technology, certified in the areas of Information and Technology Infrastructural Library (ITIL), Comverse comverged Billing System, (CCBS) FX CSR, Microsoft's MCSE, COBIT, ACP Agile, Cloudera Certified Professional.\n"
"Okechukwu is a member of International Association of Engineers (IEANG), Nigeria Computer Society (NCS), Computer Professional of Nigeria (CPM), Project Management Institute with a certificate on Fundamental Project Management with USAID Power Africa.\n"
"Okechukwu is a baptized and confirmed Presbyterian, a member of the St Peters Presbyterian Church Kpirikpiri Abakalik under the East Central Synod, he is a dedicated member of the Men’s Christian Association (MCA). He has convened many committees and programmes for the Church with many recognitions from Parishes, Arms and organizations and by God’s grace still serving in various leadership and membership positions."
"He is happily married to his Jewel; Mrs. Rhema, a seasoned Biochemist and Public Health Professional. His family is blessed with – Chigozirim, Nmasinachi & Chibudom. ",
                      style: TextStyle(fontSize: 18),
                    ),
                  ]))),
            ],
          ),
          
        ),
                Container(
          child: ExpansionTileCard(
            elevation: 5.0,
            baseColor: Colors.cyan[50],
            expandedColor: Colors.red[50],
            title: Text(
              "MR. MIKE IBIAM",
              style: TextStyle(fontSize: 17.5),
            ),
            subtitle: Text(
              "CWC/NATIONAL TREASURER (2020 – 2023) ",
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
                        children:[ Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/ibam.jpg',
                                )))),
                     Text(
                     " Early Life:\n"
"Mr. Mike Ibiam is the first child child of his parents - Late Mr. C. I. U. Agha & Ezinne (Mrs.) U. U. Agha, all of Unwana Community in Afikpo North Local Government Area of the present Ebonyi State.\n He attended three Primary Schools before obtaining his First Leaving Certificate from Central School Oso Edda, now in Afikpo South Local Government Area. \n This was due to the itinerant nature of his parents who were teachers.\n\n"
"Education: \n"
"Mike attended Boys High School, Ihube - Okigwe where he had his O’Level Certificate in 1981. He thereafter went to Government Secondary School, Afikpo for his A-Level.\n He taught Chemistry at Unwana Comprehensive Secondary School in the then Afikpo Local Government before proceeding to Imo (now Abia) State University, Uturu where he obtained his first degree with B.Sc. (Hons.) in Accountancy in 1988. He did his National Service (NYSC) in Bori Local Government Headquarters, Rivers State. \n He also has a master’s degree in Business Administration (MBA) from the University of Jos, Plateau State, specialising in Accounting and Finance.\n\n"
"Career: \n"
"Mike Ibiam had had an extensive experience in his career, spanning over 3 decades in both Banking and non - banking sectors of the Nigerian economy. His longest stay was in banking where he spent almost 20 years in both Merchant, Commercial & Mortgage Banking... His experience in Banking is in Internal Control & Audit, Commercial Banking, Operations, Corporate Banking and in Mortgage Banking. He has been Branch Manager, Head - Retail Banking and Business Manager, Corporate Banking Group, including Chief Operating Officer (COO) of a Primary Mortgage Institution (PMI).\n"
"Mike has also served as a Consultant to the Federal Ministry of Finance, Budget, and National Planning, at the Headquarters in Abuja under a DFID-Sponsored Programme on Economic Development. This was between June 2017 and June 2019 when the contract expired. He was retained up until June 2021 when he left to return to his private practice.\n He's a Financial Consultant offering Business Advisory services, Corporate Development, Due Diligence, and a whole lot of financial management services.\n\n"
"Professional/Other Organisations \n"
"Mike is a Fellow of the Institute of Chartered Accountants of Nigeria (ICAN) & also holds the Fellowship of the Institute of Corporate Administration of Nigeria. Apart from the above, he's also a member of the Project Management Institute (PMI) and holds the Foundation Certificate of Prince2 (United Kingdom). \n He's a member of the Full Gospel Businessmen’s Fellowship International (FGBMFI) and the Nigerian Red Cross Society. \n"
"He is of the Synod of the North, and an active member of the Men's Christian Association (MCA) of our great Church. He has held several offices from the Parish, Presbytery, Synod, and the Central Working Committee (CWC) levels, including Convener of many Committees.\n He was the Treasurer-in-Sitting of the CWC from March 2015 to March 2016. He's presently the National Treasurer of the MCA Central Working Committee. Mike is unarguably the longest serving CWC Delegate, having served as Chairman Planning Committee (CPC) since 2010 before becoming the Treasurer of the Synod of the North. \nHe has brought his wealth of experience to bear even in his present function as National Treasurer of the MCA. \n "
"Mike’s active involvement in the affairs of the Church has also earned him several awards, the latest being the Man of Faith from the Synod of the North which was conferred on him during the 175th Anniversary Celebration/Award Presentation of the Church in August 2021. \n\n"
"Family: \n"
"Mike is married and resides in Abuja with his family. \n",

                    
                      style: TextStyle(fontSize: 18),
                    ),
                  ]))),
            ],
          ),
          
        ),SizedBox(height: 2.0,),
                Container(
          child: ExpansionTileCard(
            elevation: 5.0,
            baseColor: Colors.cyan[50],
            expandedColor: Colors.red[50],
            title: Text(
              "ELDER JOSEPH OKON ASANGA",
              style: TextStyle(fontSize: 17.5),
            ),
            subtitle: Text(
              "FORMER CWC/NATIONALCHAIRMAN (2017-2020) ",
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
                        children:[ Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/josph_okon.jpg',
                                )))),
                    Text(
                      
"Joe Asanga, as he is fondly called, hails from Use Ikot Amama in Ibiono Ibom Local Government  Area, Akwa Ibom State. He is a well bred Presbyterian having been born into the family of late Elder Chief & Mrs. Okon James Asanga and having maintained the faith till date.\n He was baptized as an infant and confirmed at Mary Slessor Presbyterian Church, Port Harcourt in 1985 during his NYSC Program.\n"

"Joe Asanga graduated from the University of Calabar, Calabar in 1984 with a Bachelor of Science (Hons.) degree in Geology. He is an alumnus of the Lagos Business School (now Pan African University, Lagos) and has attended various management and business programs in and outside the country. \nJoe Asanga has over 25 years experience in the Nigerian Petroleum and Gas Industry. He worked briefly as a Research Geophysicist with the Research & Development Department of the Nigerian National Petroleum Corporation in Port Harcourt. \nHe joined the then Cross River State Teaching Service Commission in 1986 and taught in various secondary schools till 1996 when he took up an appointment as an Operations Geologist with Global Energy Company Limited, Lagos.\n"

"He has held various management positions in the company including Manager, Exploration Services; Manager, Business Development; Manager, Business Support Services and Manager, Human Resources Development. \n He is currently the Managing Director and Chief Executive Officer of GEC Energy Solutions Limited.\n"
"He is an Active Member of the Nigerian Association of Petroleum Explorationists (NAPE); Active Member, American Association of Petroleum Geologists (AAPG); Member, International Association of Structural/Tectonic Geologists (IASTG); Member, Nigerian Mining and Geosciences Society (NMGS); Member, the Council of Nigerian Mining Engineers and Geoscientists, Affiliate Member Chartered Institute of Personnel Management of Nigeria to mention a few.\n"
"Mr. Joseph Asanga is very passionate and committed to the things of God. He met Christ is his secondary school days as a Scripture Union member. He is committed to the faith of Presbyterianism. He was a pioneer and founding member of the Presbyterian Youth Fellowship at the University of Calabar and served severally as member of the Chapel of Redemption, University of Calabar."
"He is an active parishioner of the Lagos Presbyterian Church, Yaba Parish and has served the Church in numerous capacities - boards, committees and meetings, etc. He has at various times served as Secretary, Financial Secretary and President of Men’s Christian Association, Yaba Parish. He has served twice as Board Clerk of the Lagos Presbyterian Church, Yaba and is currently the Board Chairman.\n He is the immediate past President, Synod of the West Men’s Christian Association (MCA), and the immediate past Chairman, Central Working Committee (CWC) of the Men’s Christian Association (MCA). He is currently the Secretary of the Finance Board of the Presbyterian Church of Nigeria and an ordained Elder of the Church.\n"

"Mr. Joseph Asanga is quite articulate and focused. He is friendly, simple, humble, quite unassuming and very accessible. He is blessed with a lovely wife and children.\n",


                      style: TextStyle(fontSize: 18),
                    ),
                  ]))),
                  
            ],
          ),
          
          
        ),
        SizedBox(height: 2.0,),
                Container(
          child: ExpansionTileCard(
            elevation: 5.0,
            baseColor: Colors.cyan[50],
            expandedColor: Colors.red[50],
            title: Text(
              "REV. DR. UBONG EKPENYONG EYO",
              style: TextStyle(fontSize: 17.5),
            ),
            subtitle: Text(
              "FORMER MCA NATIONAL DESK COORDINATOR (2002-2005) ",
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
                        children:[ Container(
                        height: 130,
                        width: 120,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/eyo.jpg',
                                )))),

                     Text(
                      
"The Rev Ubong Ekpenyong Eyo, Ph.D. is an ordained Minister of the Word and Sacrament, having been ordained in at the Presbyterian Church of Nigeria, Akim Qua Town Parish on August 06, 1995 after a successful probationary period at Lagos Presbyterian Church, Yaba under the supervision of Most Rev Benebo Fubara Fubara-Manuel between July 1994-June, 1995. He was licensed at Creek Town Parish (his home town) on July 10th, 1994 after successfully completing his Diploma in Religious Studies and Diploma in Theology at Trinity Union Theological College, Umuahia (the then affiliate college of the University of Calabar).\n He has served in different Parishes as the Minister in Charge – Akim Qua Town, Kaduna Urban, Karmo, Port Harcourt and Big Qua Town Parishes. \nCurrently, due to his secondment status, he is serving at Duke Town Parish as an Associate Minister.\n"
"He was appointed the pioneer Men’s Desk Co-ordinator in Nov., 1999 and commenced work in February, 2000. Though it was an uphill task, yet it wasn’t an impossible one, he laid the foundation for the Men’s Desk work in the Presbyterian Church of Nigeria. His appointment as Men’s Desk Co-ordinator introduced him into the Board of Faith and Order as a member. Upon the completion of his six years tenure as Men’s Desk Co-ordinator, he was appointed as the Secretary of Board of Faith and Order in 2005, a tenure that was short lived and abruptly came to an end in 2006. Since his entrance into BFO, he has served the Board in different capacities such as Secretary, Doctrine and Standards, Publication Department (where he featured majorly in the writing of GA Bible Study Guide) and as the immediate past Secretary of the Board, having served a full tenure of six years. He has thus served the Board since 2000 till date, except for the one-year period of his studies in Geneva. \n"
"He obtained a Bachelor in Divinity at The Theological College of Northern Nigeria, an affiliate of the University of Jos in 2004. In 2001, Dr. Ubong Eyo was awarded a certificate in Ecumenical studies from the Ecumenical Institute, Bossey, Geneva-Switzerland and later obtained a Master's degree in Ecumenical Theological from the University of Geneva, Geneva, Switzerland in 2011. He was also awarded a Master of Arts degree in Biblical Studies from the University of Port Harcourt, Port Harcourt (2008) and Ph.D. in Biblical Studies (New Testament) from the University of Calabar, Calabar in 2016. Dr Eyo’s main area of research is biblical studies and gender. \n Since joining the services of the University in 2010, he has been teaching, mentoring and researching thereby contributing to scholarship. Dr. Eyo has successfully published over twenty journal articles and book chapters spread across both local and international peer-reviewed journals. He is a regular participant in many conferences, workshops, symposia and seminars where he presents papers and also makes useful contributions. \n He has also served the University in other capacities including Chairman, Welfare Committee (2019 till date) and Secretary, Post Graduate Committee in his Department (2020 till date). \n Dr Eyo is a member of many professional bodies including the Nigerian Association for the Study of Religions (NASR), Nigerian Association for Biblical Studies (NABIS), Faculty of Arts and Humanities Association of Nigerian Universities and many others. \n"
"Rev Ubong E. Eyo (Akamba as he is fondly called) is a widower on the account of his wife Julie’s home calling to the heavenly realm.\n They are blessed with a son, Efiok (Wisdom). Akamba dedicates this award to his wife, Julie and his grandmother, Princess Madam Ibok Eyo Ekpenyong Oku, (all of blessed memory) whose footprints in his life are indelible. ",



                      style: TextStyle(fontSize: 18),
                    ),
                  ]))),
                  
            ],
          ),
          
          
        ),
        SizedBox(height: 2.0,),
                Container(
          child: ExpansionTileCard(
            elevation: 5.0,
            baseColor: Colors.cyan[50],
            expandedColor: Colors.red[50],

            title: Text(
              "REV. DR. TORTY OKWARA ONOH ",
              style: TextStyle(fontSize: 17.5),
            ),
            subtitle: Text(
              "FORMER MCA NATIONAL DESK COORDINATOR (2005-2011) ",
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
                        children:[ Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/rev totri.jpg',
                                )))),
                    Text(
                      
"The Rev. Dr. Torty Okwara Onoh was born a twin on the 5th Day of December 1963 at the Queen Elizabeth Hospital Umuahia to the royal and Christian family of Elder Chief Isaac Okwara Onoh, Eze Ogo X111 and late Elder Mrs. Mercy M. Onoh of Agbagwu, Arochukwu in Arochukwu local Government Area of Abia State.\n"
"EDUCATION\n\n" 
"He started his journey into formal education at the Station Urban School, Kpirikpiri, Abakaliki from 1970-1975 and obtained his First School Leaving Certificate at Credit Level. He spent his first year in High School at the Abakaliki High School[Presco] and transferred to Methodist College, Uzuakoli to begin his second year in High School in 1976. \n He successfully completed his secondary education there in June 1980 obtaining the West African School Certificate.\n" 
"By God’s grace, he enrolled as a Pioneer undergraduate student of the then Imo State University, Etiti to study Sociology in October 1981. He completed his bachelor’s degree program with Honors in 1985 as one of the pioneer graduates of that University. \n After his mandatory National Youth Service program as a Teacher at the Federal Government College, Maiduguri, Borno State in August 1986, he enrolled at the Theological College of Northern Nigeria, Bukuru, Plateau State in September 1986 to pursue a Bachelor’s degree program in Divinity same year. He successfully completed this degree program with honors in June 1988. To further enhance his ministerial skills, he attended and obtained a Certificate in Church and Society from the Hendrik Kraemer Institute, Oegstgeest, Netherlands in 1995. God has also blessed Rev. Dr. Onoh’s life and ministry through Trainings, Retreats,  Seminars, Consultations, and Conferences in Zimbabwe, Ghana, Switzerland and Nigeria.\n"
"Rev. Onoh later enrolled at the McCormick Theological Seminary, Chicago, Illinois as the Global Bush Scholar to pursue a Doctorate degree in Ministry, specializing in Cross Cultural Ministries in 2003. He successfully completed the program and graduated as a recipient of the Doctor of Ministry degree as well as the John Randall Hunt Prize of the Seminary for Outstanding Doctor of Ministry Thesis and Academic Record in May 2005. He researched and wrote on: Ministering with Widows in an African Context: A Case Study of Igboland, Nigeria, under the able Academic supervision and directorship of Prof Ogbu U. Kalu of blessed memory, then Henry Winter Luce Professor of World Christianity of the McCormick Theological Seminary, Chicago, Illinois. By the special grace of God, this thesis has been revised and updated into a book titled: Ministering with Widows in Africa: Engaging the forces to confront the dragon in Igboland, Nigeria in 2014.\n\n"

"MINISTRY\n\n"
"God’s call to full time ministry clearly came to Rev. Dr. Onoh on the 18th day of May 1985 in a Christian Union fellowship during his final year of study at Imo State University, Etiti Campus. \n Before this time, he had served as a pioneer member and Chapel Coordinator of the All Saints Chapel as well as the pioneer Organizing Secretary of the Christian Union of the same University. Following this Call, he prayerfully applied to the Presbyterian Church of Nigeria to be admitted for ministerial training. The Church accepted and recommended him to the Theological College of Northern Nigeria, Bukuru, Plateau State in 1986 from where he graduated with a Bachelor’s degree in Divinity in 1988. After this he successfully completed the prescribed Trials for Licensing and was consequently licensed to preach the Word on July 31, 1988 by the then Arochukwu / Ohafia Presbytery. Rev Onoh thus began his mandatory Probationary year as a Minister at the Yaba Parish of the Presbyterian Church of Nigeria on August 1, 1988. During this period, he served at the Lagos Presbyterian Church Yaba and the Festac Town Presbyterian Church under the supervision of the late Most Rev. Dr. James. U. Ukaegbu. \nAt the satisfactory completion of the Probationary program, he was Ordained a Minister of the Word and the Sacrament at the Lagos Presbyterian Church, Yaba by the Lagos Presbytery of the Presbyterian Church of Nigeria on July 30, 1989."
 "Since his Ordination, the General Assembly of the Presbyterian Church of Nigeria has posted him to serve in the following Parishes / Churches as Minister-in-Charge, Resident Minister, and Chaplain respectively : Efut Parish, Calabar , 1989-1993; Duke Town Parish, Calabar, 1993-1995; Christ Church [Interdenominational] Port Harcourt, 1996-1998; Christ Church Chapel, University of Nigeria, Nsukka, 1998-2003; First Aba Parish, 2005-2009; Enugu Parish, 2009-2011; and Chapel of Redemption, University of Nigeria, Enugu Campus, 2011 –date. \n"
"By God’s grace, God has touched his life and those of the Parishioners in these Churches as individuals and groups in many deep and eternal ways during his tenure to God’s glory and praise. It pleased God to among many others, to establish the Couples fellowship during their tenure at Christ Church [Interdenominational] Port Harcourt as well as The Singles’ Gathering [now Young Adult Fellowship]; the Green Pastures fellowship for Widows and Widowers at Christ Church Chapel, UNN; the Missions Dept of the Christ Church Chapel, UNN; the First Aba Fertility Trust Fund for Couples facing Fertility challenges at St. Andrew’s Presbyterian Church, Aba. These ministries are still standing and flourishing to God’s glory in these Churches. In addition, God has continued to graciously raise many faithful leaders, elders, and ministers as Disciples in these churches and beyond. \n"
"Rev. Dr. Onoh has also served God and in many capacities, among which are: Member, Calabar Municipal Education Authority -1994-1995; Clerk, Aba Presbytery : 2005-2006; National Men’s Desk Coordinator, the Presbyterian Church of Nigeria: 2006-2011; Moderator, South Central Synod, Presbyterian Church of Nigeria : 2006-2009; Member, Standing Committee, Christian Council of Nigeria 2006- present; Vice Chairman, Christian Council of Nigeria, Enugu State: September 2009- 2014; Chairman, Bible Society of Nigeria, Enugu Area: 2011-2014; Pioneer Member, Spiritual Advisory Council, Christ Church, Port Harcourt: 2014-date, among others, to God’s glory.\n"
"God has continued to provide opportunities for the Rev. Onoh to speak at revivals, retreats, seminars, conferences and workshops respectively. He has recently written and spoken on such topics as: Foundations for God-glorifying ministry – July 2005; Hearing the cry of widows and ministry – October 2005; Church growth factors: An exposition of Acts 1-5-March 2006; The Annual PCN MCA Bible Studies series – 2006-2011 under several topics; Building Succession in the Presbyterian church of Nigeria through our families – August 2006; Discovering the forgotten: The church and the care of the aged – August 2006; The banes of Christian marriage –June 2007; Faithfulness in God’s business  - June 2007; The unity of the church in our age: the challenges of Interdenominational worship – December 2008; Raising effective leaders in the Presbyterian church of Nigeria – 2009; The place of Elders in missions: 1&2 – September 2010; The New Covenant– May 2011; The Holy Spirit – May 2011; Church Administration – December 2011; Spirituality and academic excellence: modeling integrity – November 2012; Getting the best out of your wife – November 2012; Contextualizing theology – April 2013; Eliminating harmful social and cultural practices against children: our collective responsibility – June 2013; The survey of the old and new testaments of the holy Bible –August 2013; Faith and family responsibilities: the Father’s role – August 2013; Team spirit in God’s house – 2014; The Holy Spirit in a believer’s life – 2014; Your Home a Mission field – 2014, among many other topics.\n\n"
"MARRIAGE AND FAMILY LIFE\n\n"
"The Rev. Dr. Torty Okwara Onoh is joyfully married to Dr. Mrs. Oluchi Gladys Onoh, daughter of late Mr. Ogbonna Nwagbara, one of Nigeria’s renowned classical graduate Fine Artists and Mrs. Ugo Nwagbara, a seasoned teacher and counselor of Obayi, Ovim in Isuikwuato Local Government Area of Abia State. \n Torty and Oluchi’s marriage which was solemnized on August 3, 1996 at Christ Church [Interdenominational] Port Harcourt has blessed and touched many. His wife, Oluchi, has been a wonderful help-meet, soul-mate, friend, Counselor and home –maker. \n Dr. Mrs. Onoh is an art educator, milliner and a truly virtuous wife and mother. \n It has pleased God to bless them with five miraculous and precious Arrows: Oziomachukwu Beulah, Nmesomachukwu Shalom, Fechi Bethel, Akachidike Peniel, and Ucheomachukwu Olive respectively. God has put a special passion in their hearts as a couple for married couples and widows which they are collaborating with God and His people to execute, to God’s glory.\n"

,



                      style: TextStyle(fontSize: 18),
                    ),
                  ]))),
                  
            ],
          ),
          
          
        ),
        SizedBox(height: 2.0,),
                Container(
          child: ExpansionTileCard(
            elevation: 5.0,
            baseColor: Colors.cyan[50],
            expandedColor: Colors.red[50],

           // leading:

            title: Text(
              "REV. SUNDAY OYAMA AGARA ",
              style: TextStyle(fontSize: 17.5),
            ),
            subtitle: Text(
              "FORMER MCA NATIONAL DESK COORDINATOR (2011-2017) ",
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
                    children:[ Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/rev_sunday.jpg',
                                )))),

                    Text(
                      "BIRTH AND PARENTAGE\n\n"
"The Rev Sunday O. Agara was born on 9th August, 1970 in Lagos to the family of late Mr. Samuel Oyama Agara and late Mrs. Jenny Oyama Agara both of Ofodua-Adun, Obubra Local Government Area of Cross River State.\n\n"
"EDUCATIONAL QUALIFICATION\n\n"
"Primary Education at the Children’s lessons Education Ilado, Maroko, Lagos State and completed it at the Primary School Ofodua now Holy Child Convent School Ofodua (FSLC – 1979 - 1984)\n"
"Secondary Education at the Community Secondary Commercial School Ofodua – Adun (SSCE –1984 -1990)\n"
"Ibrahim Babangida College of Agriculture Obubra (OND AGRIC TECH – 1993 - 1994)\n"
"Hugh Goldie (Lay) Theological Training Institute, Arochukwu, Abia State (OND Theology – 1995 - 1998)\n"
"Theological College of Northern Nigeria (TCNN) Bukuru, an Affiliated College of the University of Jos, Plateau State and obtained a Bachelor of Divinity (M.Div. 2004 – 2006)\n"
"Canaan Technologies Port Harcourt (Certificate in Office Automation – 2005)\n"
"University of Uyo, Akwa Ibom State (M.A. Phil of Religion – 2015)\n"
"University of Uyo, Akwa Ibom State (Ph.D. Candidate)\n\n"
"LICENSING AND ORDINATION\n\n" 
"Licensed -1998 \n"
"Ordained - 1999 \n"

"PARISHES SERVED\n\n"
"Vacation Job Afi Parish 1996\n"
"Vacation Job Obudu Parish 1997\n"
"Probation Port Harcourt Parish 1998 - 1999\n"
"Associate Minister, Akim Qua Town Parish 1999 - 2000\n"
"Parish Minister, Efut Abua Parish 2000 – 2003\n"
"Parish Minister, Elelenwo/Woji Parish 2003 – 2007\n"
"Parish Minister, Four Towns Parish 2007 – 2011\n"
"Parish Minister, Esin Ufot Efut Parish 2011 – 2015\n"
"Parish Minister, Ikeja Parish 2015 -2020\n"
"Parish Minister, Uyo Model Parish -2020 till date\n\n"

"OFFICES HELD \n"
"Prayer Coordinator -SU, Obubra Zone\n"
"College Chief -Hugh Goldie Lay / Theological Institute\n"
"Chairman, Calendar Committee - Uyo, CAN (2002 – 2003)\n"
"Secretary, Think Tank Committee -Cross River State CAN (2002)\n"
"Coordinator Mission/Evangelism Committee - Southern Calabar Presbytery (2002-2003)\n"
"Vice President, Student Union -TCNN, Bukuru, Jos -(2005 - 2006)\n"
"Presbytery Clerk -Port Harcourt North Presbytery (2005-2007)\n"
"Protem Secretary -Uyo Chapter CAN (2009)\n"
"Presbytery Clerk - Uyo Presbytery (2009 - 2010)\n"
"Coordinator (II) -Uyo Chapter CAN 2010 \n"
"Presbytery Moderator -Uyo Presbytery (2010 - 2011)\n"
"Men’s Desk Coordinator -2011 – 2016\n"
"National Men’s Desk Coordinator (2011 – 2016) within this period, some very striking achievements were recorded. \n Some of them include: the completion of MCA constitution, securing approval from the General Assembly to use the new constitution, \nThe new National Uniform of MCA was initiated, designed and we gained approval from the General Assembly to proceed in the printing of the new uniform, etc.\n"
"Member, Hope Waddell University Funding Committee -2012 till date\n"
"The Rev Sunday Oyama Agara was a candidate and contested for the office of the Principal Clerk of the GA (2014)\n"
"Synod Clerk, Synod of the West – June, 2017 – September, 2020\n"
"Chairman, Uyo Presbytery Education Committee (March, 2021)\n\n"

"AWARDS\n"
"A life time impact Award - Four Towns Parish PYPAN (2011)\n"
"Certificate of Appreciation (first interim Minister) - Woji Parish, Port Harcourt Parish (2012)\n"
"Award of Excellence -Uyo Presbytery (2012)\n"
"Meritorious Award – The PCN, Efut Abua Parish (2019)\n"
"Distinguished leadership Award - GA, 175th Anniversary (2021)\n"
"Pillar of MCA – MCA Esin Ufot Parish (2021)\n\n"

"MARITAL LIFE\n\n"
"The Rev Agara is married to his beautiful wife, Elder Mrs. Ekanem Sunday Agara and is blessed with Miracle and Gift.\n"
"To God be the glory.\n",





                      style: TextStyle(fontSize: 18),
                    ),
                  ]))),
                  
            ],
          ),
          
          
        ),
        SizedBox(height: 2.0,),
      ]),
    );
  }
}
