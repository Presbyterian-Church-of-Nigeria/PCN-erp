//import 'package:animated_text_kit/animated_text_kit.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pcn_erp/bible/utils/constants.dart';
import 'package:pcn_erp/nav/nav.dart';

class WomenGuild extends StatefulWidget {
  //const WomenGuild({Key? key}) : super(key: key);

  @override
  _WomenGuildState createState() => _WomenGuildState();
}

class _WomenGuildState extends State<WomenGuild> with TickerProviderStateMixin {
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
            'WomenGuild',
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
                        image: AssetImage('assets/womenguild.jpg'),
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
            "assets/womenguild.jpg",
            height: 180,
            width: 180,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "WomenGuild",
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
          child: Text(
              "HISTORY OF THE PRESBYTERIAN CHURCH OF NIGERIA WOMEN’S GUILD",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "The General Assembly of the Church of Scotland, founded the Women’ Guild.\n"
                "The first missionaries sent by Missionary Society of Scotland and Jamaica arrived with their wives who assisted their husbands in their work among the Local Churches. The white women, assisting their missionary husbands in their own little ways, interacted with the local women leaders who gradually got trained enough to inturn, assist in passing their knowledge of both spiritual and improved domestic prowess like sewing and knitting to other women in interior communities.\n"
                "In the “100 years of Christian witness in Ohafia”, 2012 (The Presbyterian church Ohafia Centenary Book) page 78, there is a detailed account of the activities of Mrs. A.K Mincha, the wife of Rev. Dr. Mincher (Nna Mincha). We are informed that she organized Bible studies and sewing classes at the mission house in Elu Ohafia where women like Mrs. Sarah Ume Olughu learnt how to sew and also picked up songs like “Jesus wants me for a sun beam”.\n"
                "This kind of interaction and influence is similar to so many other women in the Efik and Ibibio areas of  those days, who went on to became interpreters to the white missionaries wives.\n"
                "In her own case, Mrs. Sarah Ume Olughu travelled to villages like Akanu, teaching other women including the girls in Ohafia Girls’ School, Asaga, the skills she learnt from Mrs. A.K Mincher as dying, spinning, weaving, knitting, sewing, soap making, cooking, gardening and child-welfare.\n"
                "Later on, in order to help one another in various ways as Christian women whose needs had evolved in time and scope that differ from the heathen days and traditional African settings, they organized meetings and sub groups under various names like ‘Esop Iban’ i.e. “Women Fellowship” across the Presbyterian Churches in the Efik speaking area. While in the Igbo areas, the fellowships were known as “Nzuko Ndi Inyom” translated “the gathering or meeting of women”.\n"
                "As they developed in number and service, it became very necessary to coordinate and harmonize their activities, so, annual conferences were introduced and held at Duke Town, Creek Town, Ikom, Ugep, Uyo, Ohafia etc. The conferences became a highly longed after event which created the right forum for women from across the Presbyterian Churches in the nation to interact, compare notes and encourage one another as they aspired to impact the church more positively and win souls, both for the Lord and the growth of the Presbyterian church. \n"
                "	This was the situation when Miss Christine Hamilton Denham, Miss Gilospie and Miss Russel arrived Nigeria from Scotland to help the women in the church work. In 1952, the “Esop Iban”, “Nzuko Ndi Inyom” was given a neutral English name by Miss Denham who called it, “The Women’s Guild”. \n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size - 1),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("THE DEVELOPMENT OF THE WOMEN’S GUILDs",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "With the new name, came a new vigour a new life and a new vision for the Women of the Presbyterian Church of Nigeria. According to Geoffery Johnson, “The Guild took over the work the Women Missionaries had started and encouraged. It was a fellowship of Christian Women, with a certain amount social service on the side. When she was not training full-time staff at Arochukwu, Miss Denham was on the road organizing the training of volunteers. The appearance of the Canadians added a new dimension to the programme. The first pair, Agnes Golan and Joan Rochemont, arrived in 1955”.\n"
                "In her “message from across the sea” in 1986 Miss Denham remarked:\n"
                "‘At first a small committee was formed and organizing committee set up to plan the work and constitution for the Presbyterian church of Nigeria. A constitution of the Women’s Guild of the PCN was eventually drawn up and several things were made essential, e.g \n"
                "\n"
                "a.	That there should be male representatives of Synod on all committees of the Women’s Guild e.g One Local Minister on District Councils and so on right up to central committee.\n"
                "\n"
                "b.	That all office bearers should attend  short training courses to equip them for their “office”. \n"
                "\n"
                "c.	That there should be a special link with the Synod of the PCN, through the Women’s work Board and the central Committee.\n"
                "\n"
                "The syllabus was divided into four activities namely:\n"
                "\n"
                "1.	Bible study \n"
                "2.	Christian Home life (Talks and Practical help)\n"
                "3.	Prayer and Evangelism (including visiting)\n"
                "4.	Relaxation (a meeting for singing, dancing, exercises and drama).\n"
                "\n"
                "	It is interesting to note that at the time Miss Denham was organizing the PCN Women’s Guild, her home church had no such rules, but they later came to see the importance of rules and began training courses for their officers.\n"
                "\n"
                "At this time, the highest court of the church was the Synod and the Women’s Guild operated as a three tier organization, made up of branches District Council and the Central committee. Each   branch of not less than twenty (20) women with a committee of seven (7) persons were formed. The officers were President, vice President, secretary, Treasurer and three others to run the affairs of the Guild branch. Two members from the Guild branch attended the District council. The District councils spread throughout Nigeria and met quarterly. At first, there were thirteen (13) District councils and one special area namely:\n"
                "\n"
                "District council 1: Calabar   \n"
                "District council 2: Western Calabar, Creek Town, Ikot Offiong, Ikoneto\n"
                "District Council 3: Mbuot Akpa to Uyo\n"
                "District Council 4: Biase to Ikwun, Omon, Ikot Okpora etc.n"
                "District Council 5: Ibiono Ikono to Itu, Ikot Inyang etc\n"
                "District Council 6:  Aro/Ohafia\n"
                "District Council 7: Abiriba/Aba/Umuahia/Abam\n"
                "District Council 8: Uwana/Uburu\n"
                "District Council 9: Ugep\n"
                "District Council 10: Abakaliki, Enugu, Ezikwo\n"
                "District Council 11: Ikom\n"
                "District Council 12: Northern Nigeria\n"
                "District Council 13: Lagos, Western Nigeria\n"
                "Special Area: Ogoja.\n"
                "\n"
                "Ogoja was a Roman Catholic dominated area and the Presbyterian members were not large enough to be called a District so it was called “Special Area” and they had the same representation as others in every meeting. In November 1985, permission was granted by the Advisory/Central Committee to carve out Abiriba, Nkporo, Igbere and Abam to form District council 14. It was inaugurated in February 1986. On March 1st 1987, District 15 was also inaugurated. Ohafia was carved out from District 6.\n"
                "\n"
                "The Central Committee met twice a year in March and November and the November meeting always ended with a conference. Each District Council was represented by two members. The central committee was composed of the following: \n"
                "\n"
                "1. The National Officer\n"
                "2. The District council Representatives (2 from each council)\n"
                "3. Synod Representatives (2 only)\n"
                "4. Missionaries\n"
                "5. Missionaries’ wives\n"
                "6. Deaconesses \n"
                "\n"
                "	The central Committee always preceded the Advisory committee where all relevant matters from the central committee agenda were discussed. The Advisory committee would appoint a committee to suggest names for the election of officers or suggest names to be voted for. The Advisory committee was the policy-making body where issues were debated on before they were brought to the central committee for adoption or otherwise.\n"
                "\n"
                "Advisory committee members were:\n"
                "\n"
                "1.	All National Officers\n"
                "2.	All past Presidents and secretaries\n"
                "3.	Synod Representatives (2 only)\n"
                "4.	Missionaries (Selected)\n"
                "5.	Very few ministers wives e.g Mrs. Van Gerpen and Elder Mrs. B.I. Ude.\n"
                "\n"
                "	The Synod of the Presbyterian Church of Nigeria appointed a Minister at a time to attend all central committee meetings to guide the women in their decisions, so as not to deviate from the Synod decisions. The following ministers served in this capacity:  Rev. Olugu, Rev. Ekpo Ayi and Rev. E.A Onuk. The second Synod representatives was Elder Mrs. Comfort O. Agwu, National secretary of CGIT, she was always there to give CGIT report to the central committee because the Synod/General Assembly placed CGIT under the Women’s Guild.\n"
                "\n"
                "	Miss Denham left the country during the Nigerian Civil war, and in 1975, the Rev. E.J VanGerpen and his wife came on the scene. Mrs. Phyllis VanGerpen got completely involved in the work of the Women’s Guild and as Editor of the Syllabus introduced more innovations.\n"
                "\n"
                "	After the war in 1970, the central committee convened a meeting at Big Qua, Calabar. Despite the past war hostilities, some women braved it and attended the meeting which turned out successful. The women leaders at that point were: Mrs. Eme E   Ekpeyong, E.E Anwan, A.E. Eyo, A.E Nkuno, Miss I.A.O Offiong and A.E.E Oku. Representatives came from the District councils, the then Synod, church sisters like Mma Grace Uwem and Mma Lucy E Arua, S.M. Anicho, Mrs. E.J VanGerpen, M.U. Nkama, Mrs. Akak, Rev. M.G Okore and B.I Ude.\n"
                "\n"
                "	Many capable and competent women leaders emerged in the Women’s Guild and visible progress was made under the guidance of the Synod. The Guild grew numerically, and projects were started at National, Presbyteries and Branch levels. It was during this period that the Guild in the North was reactivated by Elder Chief Mrs. Asi Arikpo. Some Districts also introduced uniform and by 1979, during the centenary celebration of Mma Mary Slessor, the “MarySlessor” uniform was lunched at Ohafia Central Church together with Badge to go with it. Mma Lucy E Ama, Elder Chief Mrs. Asi Arikpo, Elder Mrs. Maria Achinivu, Elder Mrs. U.A Ukweni, Elder Mrs Grace Uwem, Deaconess Comfort Otaka, Mrs. R.E.A Obasi, Elder Irene Ekanem, were among such leaders to mention but a few. Some of the ministers attached to the Guild then following ther constitution were the Reverends N. Ebi, S.I Okanibe, E.A Okon, O Nsefik Eyo, E.A Onuk, and A.A otu at various periods. Within this period it is worthy of note that women worked tirelessly to put the Women’s Guild on a sound footings. Some lived in areas where there were no roads but tracked or paddled canoes to attend meetings. Some traveled long distances to attend meetings. They put their lives in the hands of God and traveled even in the rains to serve God. Some even lost their lives through motor accidents, may their soul rest in peace.     \n"
                "\n"
                "	In 1987, the PCN  found it necessary to adopt the General Assembly system of the church of Scotland by creating Synods. The Arms of the church were made to reorganize in conformity with  the General Assembly’s set-up. On Tuesday October 10, 1989, the National President Elder Mrs. Irene B. Ekanem announced to the Advisory Committee that by the new constitution, District councils had been phased out that the new structure of the church would go into operation from January 1990. Thus the following Presbyterials were formed from the former District councils.\n"
                "\n"
                "1.	Calabar from District 1,2 and 4 organised by Deaconess G Uwem.\n"
                "2.	Itu from District 3 and 5 organised by Deaconess A.E Oku. \n"
                "3.	Ogoja from Districts 9 and 11.\n"
                "4.	Aba from District 7\n"
                "5.	Abakaliki from Districts 8 and 10 organised by Elder Mrs. Achinuvu, Elder Mrs. Edu, Elder Mrs. A.E. Obasi\n"
                "6.	Afikpo/Uwana created from District 8 later.\n"
                "7.	Abiriba from District 14\n"
                "8.	Ohafia from District 15 \n"
                "9.	Arochukwu from District 6 \n"
                "10.	Lagos from District 13\n"
                "11.	North from District 12\n"
                "\n"
                "Two Synodical Guilds were formed namely the East and the South East. Lagos and North were Presbyterials with Synodical powers. Coordinators were appointed to oversee the work  and property of each Synod.\n"
                "\n"
                "With the new name, came a new vigour, a new life and a new vision for the women of the PCN. In essence, the Women’s Guild took over the work of the Women Missionaries, that is, evangelism, hospitality, project management/development etc.\n",

            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
            //maxLines: 5,
            //overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("WHAT WE STAND FOR",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(" AIM",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "The Women’ Guild is a fellowship uniting all women of the Presbyterian Church of Nigeria from twenty –one years onward in the dedication of their live to the Lord Jesus Christ and the service of His Kingdom. \n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("VISION",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "A formidable army of godly women for Jesus Christ that will be a beacon of light in the Presbyterian Church of Nigeria and all Christendom.\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("GUILD PROMISE",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "1.	To seek God’s guidance everyday through prayer and bible reading.\n"
                "2.	To attend Church regularly.\n"
                "3.	To help the women’s work of the church to go forward through prayer, service and Christian giving.\n"
                "4.	To obey the rules of the Women’s Guild.\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("GUILD PRAYER",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "God is light and in Him there is no darkness at all. So help me dear Lord to be in the light so that hidden works of darkness around me may be exposed. Amen.\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("GUILD ANTHEM-RCH 417",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "1.	Hark, my soul, it is the Lord, ‘tis thy Saviour, hear his word; Jesus speaks, and speaks to thee, ‘say, poor sinner, lov’st thou me.\n"
                "\n"
                "3.	Can a Woman tender care cease towards the child she bare? Yes, she may forgetful be, yet will I remember thee.\n"
                "\n"
                "5.	Thou shalt see my glory soon, when ‘the work of grace is done; partner of my throne shalt be: say poor sinner, lov’st thou me? \n"
                "\n"
                "6.	Lord, it is my chief complaint that my love is weak and faint; yet I love thee, and adore; o for grace to love thee more!\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("SLOGAN",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "Onward …………… Christian Women \n"
                "Christian Women …………… onward\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("UNIFORMS",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("There are three national Women’s Guild uniforms:",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "1.	Mkpuruoka (Ibo) and Obukpok Nsa (Efik) Wrapper\n"
                "2.	MarySlessor wrapper\n"
                "3.	Jubilee uniform\n"
                "\n"
                "Mkpuruoka (Ibo) Obukpok Nsa (Efik) Wrapper with China White Blouse and Blue Head Tie or Card Head Gear: Initially, lace blouse were worn on “Duck design” wrapper with silk blue hair scarf. This later gave way to “Obukpok Nsa” design (Efik) or Mkpuruoka design wrapper, and lace blouse. ‘Mkpuruoka’ (Ibo) is literally translated as maize seed. It was during Rev. Dr. Mrs. Mercy Akpama’s regime as the CWC Desk Coordinator, that it was observed that there was no uniformity in the quality of lace blouses worn by the women as one could easily differentiate between the rich and the poor.\n"
                "\n"
                "Rev. Dr. Mrs. Akpama’s administration therefore made it mandatory for China white blouses to be used on all our national uniforms. This has been sustained by the present administration. The uniform is worn during meetings, as a mark of solidarity during child dedication, and burial of active members of the women’s Guild. Its used is also permitted for collection of offerings.\n"
                "\n"
                "MARYSLESSOR WRAPPER –was introduced to mark and immortalize our great heroine, Mary Mitchel Slessor (1848-1915) for her selfless services to God, and for setting a pace for us to follow. The use of Maryslessor uniform is reserved for occasion like mothering week celebrations, national Conferences, Ecumenical conventions and Centenary celebrations. \n"
                "\n"
                "JUBILEE WRAPPER-was initiated by pioneer coordinator of the Women’s Desk, Dr. Mrs. Nene Amogu. This was to mark our Golden Jubilee celebration in 2002 (1952-2002). It is used during conferences, weddings, burials and ad-hoc activities of the women such as offering collection. \n"
                "\n"
                "CHINA WHITE SKIRT AND BLOUSE WITH BLUE SCARF (CGIT COLOUR)- This is the offering collector’s uniform. It is also used during Holy Communion service. Approved accessories comprise simple gold necklace, and earring, black shoes and black bag.\n"
                "\n"
                "Badges: Christian Hamilton Denham of blessed memory sent from the land of the Scots in 1952, designed badge which is vested with colours and symbols that endues women with qualities of those redeemed by the blood of the lamb.\n"
                "\n"
                "Gold: Underline signifies honour and loyalty. Gold is costly and long lasting. So fearfully and wonderfully created women must be bold, to show forth their lives and inner disposition of spiritual beauty of honour, love and devotion to Him who gives life in abundance. \n"
                "\n"
                "Blue:  is a symbol of heaven, because this world is not our home. It also signifies truth, which is Jesus Christ.\n"
                "\n"
                "The Cross: One in white. The symbol of light which by His might, we are called in Mathew 5:14. The light signifies purity, joy and glory which is our reason for telling the redemption story.\n"
                "\n"
                "The Pine:  at the bottom- a tree that stands harsh living conditions, so did our Mother-Mary Slessor, Christiana Denham, Golan and others in various portions withstood harsh conditions to bring us the word of life, to nourish and to groom the women along the banks of the cross River.\n"
                "\n"
                "The Palm Tree: nurtured to flourish. Bears oil, fruits for food, leaves for mats, thatches and brooms, sweet wine for merry hearts. So Guild has weathered through thick and thin yet made an impact on the Home, Church and the society through all these years.\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("WOMEN’S GUILD ACTIVITIES",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "1.	Women’s Guild monthly meetings by parishes\n"
                "2.	Monthly Bible study by Parishes \n"
                "3.	Presbytery, Synod and CWC Business meetings\n"
                "4.	CWC online monthly prayers/Bible study \n"
                "5.	Seminars/Workshop\n"
                "6.	Conferences\n"
                "7.	Emphasis week.\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("LIST OF PAST NATIONAL DESK COORDINATORS",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "- Miss C.H Denham \n"
                "- Mrs. Louisa Anwan\n"
                "- Elder Deaconess Grace Uweum\n"
                "- Chief Mrs. Asi Arikpo -1975-1982\n"
                "- Elder Mrs. Maria Achinivu-1982-1987\n"
                "- Elder Mrs. Irene Ekanem -1987-2000\n"
                "- Rev. Mrs. Nene Amogu -2000-2005\n"
                "- Rev. Dr. Mrs. Mercy Akpama-2005-2011\n"
                "- Rev. Mrs. Ulari Emmanuel Ogbonna-2011-2017\n"
                "- Rev. Mrs. Deborah Emem Akan  2017 till date\n",
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
                  Text('Position',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Contact',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                TableRow(children: [
                  Text(
                    'Rev. Mrs. Deborah Emem Akan ',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                  Text('National Desk Coordinator',
                      textAlign: TextAlign.center),
                  Text('08066337725', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Elder Mrs. Nkechi Chukwu', textAlign: TextAlign.center),
                  Text('Recorder', textAlign: TextAlign.center),
                  Text('08068488539', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Elder Mrs. Umo Ephraim  Etim',
                      textAlign: TextAlign.center),
                  Text('Treasurer', textAlign: TextAlign.center),
                  Text('08023308530', textAlign: TextAlign.center),
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
                  Text('Rev. Mrs. Atim Utuk Ubongabasi  ',
                      textAlign: TextAlign.center),
                  Text('08137715348 ', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Calabar Synod', textAlign: TextAlign.center),
                  Text('Rev. Mrs. Nseobong Ukpoho',
                      textAlign: TextAlign.center),
                  Text('08064012466', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('East Synod', textAlign: TextAlign.center),
                  Text('Rev. Mrs. Mary Orji ', textAlign: TextAlign.center),
                  Text('08162594998', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('East Central Synod', textAlign: TextAlign.center),
                  Text('Rev. Ifeanyi Agha', textAlign: TextAlign.center),
                  Text('07035065790', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Mid-East Synod', textAlign: TextAlign.center),
                  Text('Rev. Mrs. Janet Nweke', textAlign: TextAlign.center),
                  Text('08037361490', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Niger-Delta Synod', textAlign: TextAlign.center),
                  Text('Rev. Mrs. Olanma Okorie', textAlign: TextAlign.center),
                  Text('08037361490', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('North Synod	', textAlign: TextAlign.center),
                  Text('Elder Mrs. Grace Essien', textAlign: TextAlign.center),
                  Text('08023372332', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('South Central Synod', textAlign: TextAlign.center),
                  Text('Rev. Mrs. Esther Alex Okoro',
                      textAlign: TextAlign.center),
                  Text('08030867704', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Upper Cross Synod', textAlign: TextAlign.center),
                  Text('Rev. Mrs.  Victoria Eni Ubi',
                      textAlign: TextAlign.center),
                  Text('08181216575', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('West Synod', textAlign: TextAlign.center),
                  Text('Rev. Mrs. Charity Mba', textAlign: TextAlign.center),
                  Text('07037510875', textAlign: TextAlign.center),
                ]),
              ],
            )),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
              "THE PROFILE OF THE INCUMBENT NATIONAL DESK COORDINATOR OF THE WOMEN’S GUILD REV. MRS. DEBORAH EMEM AKAN",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "The Rev. Deborah Emem Akan is a teacher by profession with over 14 years experience with the Lagos State service commission before her voluntary retirement in 1989 to go into private business. Since then, she has been an entrepreneur and is a member of Board of Directors, Ardath Partners Ltd, a Real Estate Company that deals on properly sales and development.\n"
                "\n"
                "	She holds a B.Sc Education degree from the University of Lagos (1980) Masters of Divinity (M.Div) from Theological College of Northern Nigeria, Bukuru, Plateau State (2011), and M. ED Guidance and counseling from the Universality of Lagos (2017) with specialty in marriage counseling.\n"
                "\n"
                "	She was ordained a Ruling Elder of the Presbyterian Church of Nigeria, Lekki Parish on 22nd February, 2009. She is presently a Minister of the Word and Sacrament, licensed on 24th February, 2013 and ordained on 11th May, 2014. Since the year 2000, she has served the church in various capacities and is presently the Desk Coordinator of the Presbyterian Church of Nigeria Women’s Guild and CGIT, a position she has held from 2017 till date. She is also actively involved in Ecumenism as she is currently a member of CCN Women Directorate and National Executive Committee of WOWICCN.\n"
                "\n"
                "	The Rev. Deborah Emem Akan is married to Elder Effiong Daniel Akan and the marriage is blessed with children.\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
      ],
    );
  }
}

