//import 'package:animated_text_kit/animated_text_kit.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pcn_erp/bible/utils/constants.dart';
import 'package:pcn_erp/nav/nav.dart';

class Cgit extends StatefulWidget {
  //const Cgit({Key? key}) : super(key: key);

  @override
  _CgitState createState() => _CgitState();
}

class _CgitState extends State<Cgit> with TickerProviderStateMixin {
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
            'Cgit',
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
                        image: AssetImage('assets/cgit.png'),
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
            "assets/cgit.png",
            height: 180,
            width: 180,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "Cgit",
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
          child: Text("How It All Began",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "The Christian Girls in Training is an arm of the Presbyterian church of Nigeria exclusively for young unmarried girls. The first organization for young girls in the Presbyterian Church of Nigeria was “Girl’s Guild” introduced by C.H Denham in 1954 at Arochukwu church. The Girl’s Guild worked with the Women’s Guild. \n"
                "However, it was through the appeal of the late Ezeogo Dr. Akanu Ibiam and his wife the late Lady Eudora Olayinka Ibiam that the Canadian church sent young female missionaries to the P.C.N. and they established this organization between 1954 and 1957.\n"
                "With the advent of western education, young girl missionaries like Chalmers, Gilmour, Welch, Mary Slessor, and later, Agnes Gollan, Rachmon, and Dorothy H. Bulmer, worked tirelessly to boost the educational opportunities for the Nigerian young girls.\n"
                "The efforts of Gollan, Rachman and Bulmer all from Canada in 1954, and the then Miss Deborah A. Udeh (now Mrs. D.A. Agha) from the Nigerian side, secured a method of training young girls outside the normal secondary school system. It was in a bid to foster the training of young girls outside the normal secondary school system that Agnes M. Gollan and Dorothy H. Bulmer from Canada introduced the Christian Girl’s Club (CGC) in place of Girl’s Guild at Slessor Memorial School-Arochukwu for girls aged 6 to 21 years.\n"
                "The purpose of the club was to lead the girls to know Jesus Christ through Bible study, prayer and service.It also aims at developing the spiritual, physical, mental and the social life of the girls through bible study, worship, outdoor games, health projects, church projects and community projects. It was necessary that Christian girls should be given the opportunities to grow together in Christian community as individuals realizing their self-worth in relationship with God. They need to learn to be open and trusting in their relationships. As young Christians, they have to learn to respond with love to the needs of others in their community, to enable them take their place as citizens in Nigeria\n"
                "The programme guide which helps to achieve these laudable objectives is based on the biblical passage which states: “And Jesus increased in wisdom and in stature and in favour with God and man”. (Luke 2:52).\n"
                "In 1965, the Christian Girl’s Club witnessed expansion as it was improved on and extended to other parts of the PCN. However, it is mandatory that every member of CGIT must attend Sunday school. It is hoped that when a CGIT girl marries, she will automatically become a member of the Women’s Guild.\n"
                "The Canadian missionaries lived at Canadian House Amaekpu Ohafia. They left Nigeria in 1967 and 1972 respectively after handing over the Christian Girl’s Club (CGC) to the organizing secretary, Elder Mother Comfort Onwanma Agwu and the National Coordinator, Chief mother Nkwo Ndukwe Agwu. \n"
                "Elder Comfort Agwu carried on the light of CGC as handed to her by the Canadian girls. She organised retreats and trainings for mothers. It is worthy of note that it was through the efforts of Mother Agwu and Late Rev. Mgbeke George (first Ordained Female Minister of the PCN) that CGC became a national affair as it spread round the entire PCN. Prior to her (Elder Comfort Agwu) reign, CGC was mostly concentrated in Ohafia, Arochukwu and Calabar areas. \n "
                "On July 17th 1978, the national patron, Late Ezeogo Elder Dr, Akanu Ibiam caused the name “Christian Girls Club” (CGC) to be changed to “Christian Girls in Training” (CGIT) because of the connotation of the word “Club” which may be hideout for delinquents. \n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size - 1),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("Objectives",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "The objectives of CGIT are given as follows:\n"
                "1.	To create in each member the desire to read the bible and pray daily.\n"
                "\n"
                "2.	To foster unity, love and fellowship.\n"
                "3.	To train the members to be the Christian women of tomorrow God would want them to be through CGIT programmes and activities.\n"
                "4.	To teach the members to serve and co-operate with the church, other church organisations and the community. \n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
            //maxLines: 5,
            //overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("C.G.I.T CONCERNS",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "1.	CGIT Uniform\n"
                "2.	CGIT Promise\n"
                "3.	CGIT Opening ceremony\n"
                "4.	CGIT Closing Ceremony\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("THE CGIT UNIFORM",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "The CGIT uniform comprises the following:\n"
                "\n"
                "a.	Electric blue frock with white edge at the sleeves \n"
                "b.	White Cape\n"
                "c.	White Tie that lies in-between the cape\n"
                "d.	White Belt round the waist \n"
                "e.	Invisible Pocket\n"
                "f.	V-shape \n"
                "g.	Electric blue triangle shaped head tie\n"
                "h.	Black flat cover shoe\n"
                "i.	Black wrist-watch (Optional)\n"
                "j.	Black Hand-bag (Optional)\n"
                "k.	Dotted Earrings (Optional)\n"
                "\n"
                "Before now the girls use to wear brown sandals. But recently the senior girls wear black shoes; while the younger girls wear socks with black shoes. Also girls wear black skirts with white blouse or white T-Shirt. They equally wear black skirt with their parish, Presbytery or Synod T-Shirt of any colour of their choice during other CGIT activities and conferences save for business meetings.\n"
                "\n"
                "The White Tie: The white tie lies in-between the white cape/collar and drops at the chest region. It represents a “Sword”. \n"
                "\n"
                "Hebrews 4: 12“For the word of God is quick, and powerful, and sharper than any two-edged sword, piercing even to the dividing asunder of soul and spirit and of the joints and marrow, and is a discerner of the thoughts and intents of the heart. \n"
                "The world wherein we live is a battle field and at every moment in life we are expected to guard our hearts and arm ourselves with the word of God which is our sword.  \n"
                "\n"
                "The white Belt: This symbolizes the Belt of ‘Truth’ as recorded in the book of Ephesians6:14a (NIV) Stand firm then, with the belt of truth buckled round your waist.\n"
                "\n"
                "Pocket: This pocket should be located at the left hand side of the CGIT uniform at the breast region and should be invisible, showing only the white edge of the pocket. As a girl under training, it is expected of you to always be with your writing material. Therefore, the essence of the tiny pocket is for the girls to put their pen or pencil.\n"
                "\n"
                "The V-Shape: The V-shape as seen on the CGIT uniform is not just a design but something of great significance, the objectives of CGIT uniform signifies ‘Victory’ according to the word of God in 1 Corinthians 15:57 “but thanks be to God, which gave us victory through our lord Jesus Christ”.\n"
                "\n"
                " The V-shape is a special design found on the CGIT uniform and it lies at the center of the frock starting from the point where the Vagina is located. At the point where the vagina is, the frock is pleated by making 5 to 6 folding to form the V-shape. This design birthed the popular slogan with which most of the girls address themselves as ‘Victorious Virgin’ \n"
                "\n"
                "Electric blue triangle shaped Headscarf: The CGIT has a particular style with which they wear their headscarf. The headscarf is tied from back to front to form a V-shape while the remnant is tucked in to form a small lump which signifies “Light’. Matthew 5:16 (KJV) Let your light so shine before men, that they may see your good works, and glorify your father which is in heaven. In recent time times the style has changed.\n"
                "\n"
                "Black Shoe: Our shoes symbolizes ‘Peace’ as recorded in Ephesians 6:15; And with your feet fitted with the readiness that comes from the gospel of peace.\n"
                "\n"
                " This explains why the C.G.I.T girls go on flat shoes instead of high heel shoes. We carry the message of peace and as such should avoid noise. Before now the girls use to wear brown sandals. But recently the senior girls wear black shoes; while the younger girls wear socks with black shoes.\n"
                "\n"
                "Black Handbag: It is expected that a girl in CGIT should attend every gathering with Bible, book, pen and Hymn book and these forms the content of the small handbag of a CGIT girl. It is not a compulsory uniform but it is encouraged. And if any girl while on uniform must carry a handbag, it must be black.\n"
                "\n"
                "Black wristwatch: Though this is not compulsory but CGIT girls are encouraged to put on their wrist watches as that will help them to be time conscious. Therefore, while on uniform, the correct wrist watch to wear is black leather wrist watch.\n"
                "\n"
                "Dotted Earring: If a CGIT girl must wear ear ring especially while on uniform, the ear ring must be a dotted earrings. Dangling ear rings are not accepted.\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("THE CGIT PROMISE",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "Every member of the CGIT promises to be the best of her ability. The CGIT promise is recited with the left hand on the chest and the right hand before the face while the girls looks straight into their palms placed before them as if it is a book where the promise is being read from. The promise goes thus: As a Christian girl, I promise to do my best with God’s help. To seek truth, Cherish health, Love God and serve others.\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("THE C.G.I.T PROMISE EXPLAINED",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "1.	“TO SEEK TRUTH” Proverbs 6:16-19 reads “There are seven things the Lord hates, Haughtiness, lying, murdering, plotting evil, eagerness to do wrong, false witness and sowing discord among brothers. C.G.I.T girls should say and seek truth always and believe all will go to well.\n"
                "\n"
                "2.	“CHERISH HEALTH”Cleanliness is next to Godliness. Girls should learn how to take care of themselves, personal hygiene, care of skin, teeth and nails, proper dressing and other personal problems now facing our girls, like indiscriminate use of drugs without medical prescriptions or advice. Girls are to practice sanitation in and around homes. Use flowers and know the use of flowers, learn to budget, and be economical to provide the vital nutrients for the family. Learn to preserve food in the local and modern methods. Sewing and knitting and lessons on Nutrition, Cookery and Laundry (using local and modern methods) emphasize on the dangers of excessive use of alcoholic drinks and smoking etc. that destroys the body.\n"
                "\n"
                "3.	“LOVE GOD”“Love thy neighbor as thyself” organize daily family Bible study, discussions and prayers. Home craft training then by being modest and courteous. Sing songs of praises, worship (spiritual songs) and quote Bible passages and proclaim Christ through words and action, obedience, respect, discipline, perseverance and participation in Church activities. By doing all these we fully and freely inspire others to love God with all their hearts as they see you love God with all your hearts (Deut. 6:5).\n"
                "\n"
                "4.	“SERVE OTHERS” Influence others for Christ by responsible stewardship of time, talent and material. Be kind to others, (e.g) the street children, orphans, sick, aged and even the Church and community, be disciplined in carrying out your duties to God and man. Be gently and answer all people wisely and softly, “soft words spoken calms and remove angers”. Remember a beautiful Christian girl in training, lacking discretion and modesty as her tools of influence is like a fine gold-ring in a pig’s snout. Proverb 11:22\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("THE CGIT OPENING CEREMONY",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "The CGIT opening ceremony is usually observed before the commencement of any CGIT gathering. The president or whoever is leading the opening ceremony willlead the girls to forms a ‘C’ line singing  I ve got the CGIT Enthusiasm with the leader of the opening ceremony standing at the point where the letter C is to begin. A mother stands behind the leader while other mothers cue behind the girls. Every girl will stand with their legs slightly open forming a ‘V’ shape which signifies that the meeting is about to begin. The opening ceremony goes thus:\n"
                "\n"
                "I ve got the CGIT enthusiasm in my heart\n"
                "Up in my head, down to my feet\n"
                "I ve got the CGIT enthusiasm all over me\n"
                "I will call other (2x)\n"
                "\n"
                "Leader: Are we all here to meet in the name of Jesus? \n"
                "\n"
                "Girls: Yes we are\n"
                "\n"
                "Leader:What does the letters C.G.I.T stand for?\n"
                "\n"
                "Girls:Christian girls in training\n"
                "\n"
                "Leader:What verse in the bible will help us if we want to be followers of Jesus Christ?\n"
                "\n"
                "Girls:St Luke 2:52; and Jesus increased in wisdom and in stature and in favour with God and man.\n"
                "\n"
                "Leader:What is the promise of every Christian girl in this training?\n"
                "\n"
                "Girls:As a Christian girl, I promise to do my best to seek truth, cherish Health, love God and serve others.\n"
                "\n"
                "Leader:RCH 517 verse 2 \n"
                "\n"
                "Girls: Run the straight race through God’s good grace\n"
                "Lift up thine eyes and seek his face\n"
                "Life with its path before us lies\n"
                "Christ is the king and Christ the prize. Amen.\n"
                "\n"
                "After the hymn, the leader prays and makes announcement after which she matches the girls inside in a straight line singing a CGIT song.\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("CGIT CLOSING CEREMONY",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "The closing ceremony is performed to bring to a close every gathering of the CGIT. The girls will form a circle holding their hands together with the right hand on top and the left hands beneath. The legs are closed during the closing ceremony and this signifyies that the meeting has come to a close. The closing ceremony goes thus;\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("Chant 1",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "At the bank of the beautiful river\n"
                "Meet me there (4x)\n"
                "At the bank of the beautiful river\n"
                "Meet me there when my journey shall end\n"
                "At the bank of the beautiful river\n"
                "Meet me there (3x)\n"
                "At the bank of the beautiful river\n"
                "Meet me there when my journey shall end.\n"
                "\n"
                "The above chant tries to remind the Christian Girls In Training that they are but pilgrims here on earth with hope of going to a beautiful place God has prepared for them.\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("Chant 2",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "We will follow Jesus\n"
                "Teacher, friend and guide\n"
                "In our works and in our plays \n"
                "In our home and schools each day\n"
                "In God’s work so far and wide, we will follow Jesus\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("Mizpah Benediction",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "May the lord watch between me and you, while we are absent one from another, go in peace. (Gen 31:49)\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("Chant 3",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "Who will be the next to follow (2x)\n"
                "Who will be the next to follow Jesus?\n"
                "Who will be the next to follow jesus Christ\n"
                "Follow him to heaven\n"
                "\n"
                "The chant three is sung to identify who will lead the opening and closing ceremonies during the next meeting. Anyone that wishes can come out. In most cases, two girls are expected to answer to the call of ‘who will be the next?’ the first person takes the opening ceremony while the second will take the closing ceremony.\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        SizedBox(
          height: 0.1,
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("LIST OF PAST DESK COORDINATORS",
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
                  Text('Coordinator',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Year',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                TableRow(children: [
                  Text(
                    'Rev. Dr. Mercy Akpama',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                  Text('2005-2011', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Rev. Ulari Ogbonna', textAlign: TextAlign.center),
                  Text('2011-2017', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Rev. Deborah Emem Akan', textAlign: TextAlign.center),
                  Text('2017-Date', textAlign: TextAlign.center),
                ]),
              ],
            )),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("CWC LEADERSHIP",
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
                  Text('Position',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Coordinator',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Contacts',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                TableRow(children: [
                  Text(
                    'National Desk Coordinator',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                  Text('Rev. Deborah Emem Akan ', textAlign: TextAlign.center),
                  Text('+2348066337725', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('CWC Recorder', textAlign: TextAlign.center),
                  Text('Nene Ndukwe', textAlign: TextAlign.center),
                  Text('+2347036252519', textAlign: TextAlign.center),
                ]),
              ],
            )),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("SYNOD COORDINATORS",
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
                  Text('Contacts',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                TableRow(children: [
                  Text(
                    'Akwa Synod',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                  Text('Mother Oto-Obong Augustine  ',
                      textAlign: TextAlign.center),
                  Text('08125287955 ', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Calabar Synod', textAlign: TextAlign.center),
                  Text('Rev. Divine Ojeka', textAlign: TextAlign.center),
                  Text('08022625947', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('East Synod', textAlign: TextAlign.center),
                  Text('Nene Ndukwe', textAlign: TextAlign.center),
                  Text('+2347036252519', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('East Central Synod', textAlign: TextAlign.center),
                  Text('Mother Onyinyechi Kalu', textAlign: TextAlign.center),
                  Text('08060572350', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Mid-East Synod', textAlign: TextAlign.center),
                  Text('Elder Nkechinyere Okoro', textAlign: TextAlign.center),
                  Text('07031837252', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Niger-Delta Synod', textAlign: TextAlign.center),
                  Text('Rev. Nwanyi Godwin', textAlign: TextAlign.center),
                  Text('08143422756', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('North Synod	', textAlign: TextAlign.center),
                  Text('Elder Nene Oti', textAlign: TextAlign.center),
                  Text('08036424304', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('South Central Synod', textAlign: TextAlign.center),
                  Text('Rev. Uchenna Chigozie', textAlign: TextAlign.center),
                  Text('08035798459', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Upper Cross Synod', textAlign: TextAlign.center),
                  Text('Rev. Nancy Didymus Otubo', textAlign: TextAlign.center),
                  Text('08066128772', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('West Synod', textAlign: TextAlign.center),
                  Text('Mother Ngozi Odim', textAlign: TextAlign.center),
                  Text('08100666286', textAlign: TextAlign.center),
                ]),
              ],
            )),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("CGIT ACTIVITIES",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "1.	CGIT Weekly Meetings\n"
                "2.	Monthly Bible Study\n"
                "3.	Parish, Presbytery, Synod and CWC Business Meetings\n"
                "4.	Seminars/Workshop\n"
                "5.	Conferences\n"
                "6.	Emphasis Week\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("THE DESK COORDINATOR’S PROFILE",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
              "ABRIDGED PROFILE OF THE CGIT DESK COORDINATOR, REV. DEBORAH EMEM AKAN",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "The Rev. Deborah Emem Akan is a teacher by profession with over 14 years experience with the Lagos State Service Commission before her voluntary retirement in 1989 to go into private business. Since then, she has been an Entrepreneur and is a member of Board of Directors, Ardath Partners Ltd, a Real Estate Company that deals on property sales and development.\n"
                "\n"
                "She holds a B.sc Education degree from the University of Lagos (1980), Masters of Divinity (M.Div) from the theological College of Northern Nigeria, Bukuru, Plateau State (2011), and M.Ed Guidance and Counseling from the University of Lagos (2017) with a specialty in Marriage Counseling.\n"
                "\n"
                "She was ordained a Ruling Elder of the Presbyterian Church of Nigeria, Lekki Parish on 22nd February, 2009. She is presently a Minister of The Word and Sacrament, licensed on 24th February, 2013 and ordained on 11th May, 2014. Since the year 2000, she has served the church in various capacities andis presently the Desk Coordinator\n"
                "\n"
                "capacities and is presently the Desk Coordinator of the Presbyterian Church of Nigeria Women’s Guild and Christian Girls in Training, a position she has held from 2017 till date. She is also actively involved in Ecumenism as she is currently a member of CCN Women Directorate and National Executive Committee of WOWICNN.\n"
                "\n"
                "The Rev. Deborah Emem Akan is married to Elder Efiong Daniel Akan and the marriage is blessed with children.\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
      ],
    );
  }
}
