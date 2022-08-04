//import 'package:animated_text_kit/animated_text_kit.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pcn_erp/bible/utils/constants.dart';
import 'package:pcn_erp/nav/nav.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class GirlsBrigade extends StatefulWidget {
  //const GirlsBrigade({Key? key}) : super(key: key);

  @override
  _GirlsBrigadeState createState() => _GirlsBrigadeState();
}

class _GirlsBrigadeState extends State<GirlsBrigade>
    with TickerProviderStateMixin {
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
            'GirlsBrigade',
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
                        image: AssetImage('assets/girls_brigade_image.jpeg'),
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
          child: Column(children: [
            Container(
              //color: Colors.blueAccent,
              child: TabBar(
                  controller: _tabcontroller,
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.blue,
                  tabs: [
                    Tab(text: "About", icon: Icon(Icons.home)),
                    Tab(
                      text: "Profile",
                      icon: Icon(Icons.account_circle_outlined),
                    ),
                    Tab(
                        text: "Events",
                        icon: Icon(Icons.event_available_sharp)),
                    Tab(text: "Contacts", icon: Icon(Icons.contacts)),
                  ]),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: _home(),
            ),
          ]),
        )));
  }

  _home() {
    return Center(
      child: Column(
        children: <Widget>[
          _about(),
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
            "assets/GirlsBrigade.jpg",
            height: 180,
            width: 180,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "Girls Brigade",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: size * 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          color: Colors.black26,
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("BRIEF PROFILE OF GIRLS’ BRIGADE",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "The girls’ Brigade is an international Inter-denominational voluntary uniformed Christian youth organization for girls and young women. It is a merger of three Christian bodies that started separately in different countries with the goal and focus to bring girls and young women together to the salvation of Jesus Christ. The girls’ brigade was formed in Dublin in 1893 by a young Presbyterian girl by name Miss Margaret Lyttle. \n"
            "\n"
            "It was started by the Union of the Girls’ Brigade, the Girl Guidry and the Girls’ Life Brigade. This Union was confirmed on the 10th of June, 1968. This organization started in 1942 in Amper in Plateau State by a missionary Marjorie Burroughs who came from the 1st Lepton Company in England. She came to do church planting with her husband. She started Girls’ Brigade with eight (8) girls.\n"
            "\n"
            "In Cross River State, Girls’ Brigade is sixty five (65) years.\n"
            "\n"
            "OUR MOTTO: To seek, serve and follow Christ. .\n"
            "\n"
            "OUR PRINCIPLES: Is that the Brigade acknowledges Jesus Christ as Savior and Lord according to the Scripture and seeks to fulfill its aim to the glory of God, Father, Son and Holy Spirit. \n"
            "The Brigade gives positive teachings on the Christian attitude to the social ills facing its members.\n"
            "\n"
            "OUR VISION: Girl’ lives transformed, God’s world enriched.\n"
            "\n"
            "OUR Mission: Is to be a rational, relevant and responsive worldwide movement focused on working among girls and young women. \n"
            "\n"
            "OUR PASSION: Is to empower girls, children and young women in Local Communities around the world to be themselves, to develop and use their gifts and skills, and to discover, embrace and live life to the full in their generation. \n"
            "\n"
            "OUR AIM: To help girls to become followers of our Lord Jesus Christ and through reverence, self control and a sense of responsibility to find true enrichment of life. \n ",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size - 1),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("Our Program covers:",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "a.	Spiritual: This is to help girls find salvation and grow closer to God through Bible knowledge, moral instruction, prayer and evangelism. \n"
            "\n"
            "b.	Physical: This is to help us develop healthy bodies and be smart always through exercise and athletics like football, volleyball and other sporting activities. \n"
            "\n"
            "c.	Educational: Girls are taught home management, trades, business, multiple skills and quality life to help them in being self-reliant and self-sufficient, thus reducing poverty.\n"
            "We also train girls to be good leaders and advocates for issues affecting girls, children and young women such as early marriages, menstrual hygiene and violence against women. We teach handiwork and different subjects such as (Home Management, Health Science and Natural History) that will increase their Education.\n"
            "\n"
            "d.	Service: We train them for establishing good Christian homes and of service to the elderly. The girls are taught first aid, child care, cookery, Hygiene and baby care.\n",

            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
            //maxLines: 5,
            //overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("The Laws of the Girls’ Brigade are:",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "1.	Be faithful to our Lord Jesus Christ in His Church.\n"
            "\n"
            "2.	Refuse all beers and intoxicating drinks. \n"
            "\n"
            "3.	Be pure in thought, word and deed.\n"
            "\n"
            "4.	Be kind, cheerful and polite. \n"
            "\n"
            "5.	Promptly obey the order of officers.\n"
            "\n"
            "6.	Remember the girls’ brigade Motto: Seek, Serve and Follow Christ. \n"
            "\n"
            "The Girls’ Brigade operates in over 50 countries worldwide and is divided into five fellowship; Africa, Asian, Caribbean and Americas, England and Wales and Pacific.\n",
            //You stopped here

            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        SizedBox(
          height: 0.1,
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("There are five (5) sections in Girls Brigade",
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
                  Text(
                    'Explorer',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                  Text('4 to 8 years ', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Junior', textAlign: TextAlign.center),
                  Text('7 to 11 years ', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Senior', textAlign: TextAlign.center),
                  Text('13 to 18 years', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Brigadier', textAlign: TextAlign.center),
                  Text('18 to 21 years ', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Leaders’ Lieutenant Captain ',
                      textAlign: TextAlign.center),
                  Text('21 years  ', textAlign: TextAlign.center),
                ]),
              ],
            )),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "There are 14 African Countries that have Girls’ Brigade but only six (6) are active (that is pays dues). Nigeria is second to Ghana in terms of statistics with a total number of sixteen (16) thousand members. \n"
            "The current Africa President/International Vice President is a Presbyterian and a Cross Riverian by Name Mrs. Aruk Okon Omori. The Girls’ Brigade for ease of administration is divided into zones and each zone is headed by a chairperson. \n"
            "\n"
            "The structure of the Girls’ Brigade is;\n"
            "Company\n"
            "District\n"
            "State\n"
            "Zone\n"
            "National\n"
            "Fellowship\n"
            "International\n"
            "\n"
            "A State can be a District or a Division.\n"
            "A District when the State has only four (4) districts and the leader is a State Commandant.\n"
            "A leader of a State with six (6) to eight (8) districts is a State Commissioner.\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
      ],
    );
  }
}
