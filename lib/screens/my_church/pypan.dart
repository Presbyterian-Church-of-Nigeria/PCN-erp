//import 'package:animated_text_kit/animated_text_kit.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pcn_erp/bible/utils/constants.dart';
import 'package:pcn_erp/nav/nav.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class Pypan extends StatefulWidget {
  //const Pypan({Key? key}) : super(key: key);

  @override
  _PypanState createState() => _PypanState();
}

class _PypanState extends State<Pypan> with TickerProviderStateMixin {
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
            'PSF',
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
                        image: AssetImage('assets/pypan.jpg'),
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
            "assets/pypan.jpg",
            height: 180,
            width: 180,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "PSF",
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
          child: Text("‘THE ACTS OF THE APOSTLES’",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
              "  A HISTORICAL ACCOUNT AND EVOLUTION OF THE PRESBYTERIAN STUDENTS FELLOWSHIP (PSF) ALSO KNOWN AS ‘KINGLY FAMILY’;’",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "HISTORY: The Presbyterian Students Fellowship began as Presbyterian Young Peoples Association of Nigeria (PYPAN), in the University of Nigeria Nsukka at about 1987. As a result, it would not be out of place to recognize the labours of the following who led the fellowship before its reformation namely: Ibezimako  Kanu (86/87); Ochu Ikpo Ochu (87-89); Onwumere F. Uche (89-91); and Kalu Ndu 91/92. Their labours truly were not in vain.\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size - 1),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("PYPAN to P. S. F:",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "In 1991, under the Presidency of Bro. Kalu Ndu (now Rev. Kalu Ndu), PYPAN metamorphosed into The Presbyterian Students Fellowship (PSF). The need for a change of name was based on the following:\n"
                "\n"
                "a.	There was a negative perception of some persons to the name “PYPAN” considering the challenges experienced in many parishes of the Presbyterian Church at that period of our church history.\n"
                "\n"
                "b.	The name “PYPAN” also sounded too “church- based” and the “association” in the name acted as a negative publicity factor when compared to the CU, SCM, CASOR, and other campus fellowships.\n"
                "\n"
                "c.	Going by the policy of the church then that no one older than 30 years should be in PYPAN, some of our ministers who came into school to obtain their degrees and other older persons felt left out of the group. \n"
                "\n"
                "d.	Finally, we had Cameroonians, Ghanaians and others who identified with the Fellowship. The “Nigeria” in “PYPAN” was sure to put off some from other African countries. \n"
                "\n"
                "By reference , it would not be out of place to regard the leadership of the fellowship under which this name change and structure came about as the founding fathers of PSF and includes the following: Bro Kalu Ndu (president); Bro Godwin Okike (VP)-(late), Bro Chukwuemeka Awa (Secretary), now Elder Chukwuemeka Awa ; Bro Ndubuisi Okorafor (Bible study secretary) now a medical doctor;  Sis Nkechi Ubani (nee Egbuta) -Treasurer ; Sis Jacqueline nee Agwu-Prayer secretary; Uchendu Orizu: Evangelism secretary ( Now Dr Uchendu Orizu); Nnenna Nwevo (late)-welfare female; Dickson Ndu-welfare male ; Rev Miracle Ajah: Ex-Officio.\n"
                "\n"
                "VISION: Far and above the reasons already mentioned was a drive and burning by some Presbyterian students to experience the glory of God like in the days of Presbyterians like John Knox, Jonathan Gorforth, Mary Slessor, Kathrine Kurhman, John Hyde (aka Praying Hyde), Hope Waddell and a host of others, the pioneers of this vision felt strongly that the ancient landmarks set by the founding fathers of this church, under God had shifted (Prov. 22: 28; 23:10). Thus in P. S. F, the vision of  ‘restoring the glory’ of God not only to the Presbyterian Church but to the entire Church of Jesus Christ (Hag. 2: 7) was birthed. We are therefore committed to mission work (Acts 20: 24) and unceasing intercession (Joel 2: 17) as we seek God’s glory back in His house.\n"
                "\n"
                "PARISH VISITATIONS: Having so determined to chart a new path, a team of about six (6) undergraduates from the University of Nigeria Nsukka embarked on a mission with the aim of seeking audience with Presbyterian ministers. In the narratives of one of the ministers, Rev Ibe Ogboso Uka, who would latter play a prominent role in the life of the fledging fellowship: “I can still remember a few names like Mr. Kalu Ndu then, who later became ordained as a Presbyterian Minister, Mr. Chukwuemeka Awa, now an ordained Elder of the Church resident in Port Harcourt and one Sister Ebere. Their request or demand was simple, namely: “To encourage and enable them to sell/share their vision to the members of my Congregation, thereafter raise funds to enable them start a base for Presbyterian Students’ Fellowship on campus just like CASOR -Christ Ambassadors Students Outreach of the Assemblies of God Church on campus and Christian Union (CU) e. t. c.” I was adequately informed by the team that they had the backing of Rev. Dr. Agha, A. U. (now Professor Agha) and Rev. Dr. Emmanuel Nlenanya Onwu, (now Professor Chinweokwu) all in the same University of Nigeria. With these names they mentioned, I quickly swung into action without argument. The team members themselves were familiar faces, I raised no resistance than to use my position then to raise the curtain for them, watered the ground and then, they addressed members of my congregation”.\n"
                " With time, more teams were formed that went from parish to parish to create awareness as well as to raise funds to stabilize the campaign for PSF. No place was spared no matter how far, in pursuit of enlightenment campaign for supports. The journeys took them to various churches and cities and of course in one of such trips they were involved in an automobile crash which took the life of one of them – Godwin Okike (may his soul rest in peace). Godwin Okike was President of UNN in the 92/93 session. We also remember other heroes of the fellowship who lost their lives either while serving or after graduation a few of which are:  Ndubuisi Ovu (93/94); and Pst  Joel Nwosa (96-98); \n"
                "\n"
                "The 1st Sunday Fellowship:  Following from the change of name from PYPAN to PSF, it was also agreed that we commence meeting on Sundays in addition to the weekly prayer meetings/ Bible studies. Thus PSF Nsukka met for their first Sunday Fellowship on the 1st of March, 1992.\n"
                "\n"
                "PSF National Conventions/ Conference: The first ever PSF National Convention held from the 13th to 16th of January, 1994 at the University of Nigeria, Nsukka. It had as its theme “Rebuilding the broken walls” and the guest speaker was then Rev. B. F. Fubara Manuel (now Rev. Dr. B. F. Fubara Manuel). The event held at the Christ Church Chapel of the University and was attended by some Presbyterian students from sister universities e.g. Abia State University, Uturu and others. The second National conference of the PSF held again at the University of Nigeria, Nsukka from the 8th to the 11th of February, 1996. It had as its theme “The Glorious Church”. The Guest speaker was Rev. Obaji Mbeh Agbiji. It was attended by PSF students from other institutions in addition to those from the University of Nigeria. The PSF National Convention for 1997 held at the Abia State University while the 1998 edition held at the University of Calabar. \n"
                "The first and only Sisters National Conference held in ABSU under Sis Chinyere Odii in 2005 while the first ever National Leadership Training conference (NLTC) was organized in 2007 in school of Health science and Technology (SOHTECH), Aba.\n"
                "\n"
                "Pastoral Visits: In 1995, the then PSF Nsukka President, Bro. Ukoha Ukoha Kalu, and the Vice President, Bro. Osa Nelson Obasohan paid visits to PSF UniCal, PSF UniUyo and PSF ABSU in the month of June. The PSF UniCal Chapter was then coordinated by Bro. Ndukwe Akunjo (now late) and Bro. Mankwe Amah. The UniUyo Chapter was being coordinated by Rev. Uguru U. Uguru. Bro Wilberforce Oti (now Dr. Oti), Rev. Kalu Ukpabi and others played prominent roles in establishing PSF ABSU Chapter.\n"
                "\n"
                "PSF Goes to GA:  Despite the modest efforts by the various teams, many of our Presbyterian Ministers did not clearly know the vision of PSF and so they treated our members with distrust. It was therefore necessary that the church understood better what the fellowship stood for. One sure way to achieve that was to head to the fountain of the church- The General Assembly. These strengthened in some ways the hands of the undergraduate students basically from UNN to spread the gospel of canvassing for students on campuses to look for freshers/returning students alike (Presbyterians) to join the PSF. Such campaigns were carried to Universities of Calabar, Uni Ben, and a few other campuses.\n"
                "A window of opportunity presented itself at the General Assembly meeting held by the Synod of the West for the first time in Lagos. The meeting held from Friday 18th to Friday 25th August, 1995. The then PSF National President, Bro. Ukoha Ukoha Kalu was given about fifteen minutes to address the General Assembly. This opportunity was facilitated by Rev. Prof. A. U. Agha (Our Nsukka Minister in- charge of PSF), Rev. E. A. Ituma (now Rev. Prof. Ituma) and others sympathetic to the cause of PSF. Based on this successful outing, the GA agreed that a PSF representative will be included as resource person to the General Assembly meeting giving PSF an official recognition by the church. The PSF emphasis Sunday was also agreed on and recognized to support the work of the Fellowship, create awareness about PSF, her activities and its importance in the life of the church. We thank God for the Rev Okon Bassey Ekpenyong (now late) who was the chairman of the then Board of Church Life (BCL), now Board of Faith and Order (BFO) and late Elder Atang E. Atang who was the secretary. They made the recommendations to GAEC that set the fellowship on more solid foundation by making the  PSF an  act of the General Assembly of the Presbyterian Church of Nigeria. It is worth noting that prior to this the General Assembly that held in Trinity (Union) Theological College, Umuahia took a decision that:  ‘Presbyterian Clergy and members in Tertiary Institutions shall be encouraged by the Church to establish a strong Presbyterian Presence in such Institutions.’ (See Minute GA 0430: 5th General Assembly, Umuahia, 1991). In another GA meeting, it was also decided that: “It shall be the duty of the General Assembly to sponsor two national officers of the Presbyterian Students Fellowship (PSF) to General Assembly meetings. (Cf. Minute GA 0590: 7th General Assembly, held in Bukuru, Jos, 1993; paragraph 56.2).\n"
                "\n"
                "Chapters and off Campus Branches: University campuses started opening for Presbyterian Students’ Fellowship chapters. On the other hand some local congregations of PCN also had what was called PSF but mostly of Secondary School Students, in some places Primary School Pupils, e.g. in Ohafia Area, Abia State, many congregations hosted PSF branches made up of Secondary school/Primary. This development was a promising one, except that I do not know how they had served as Nursing/preparatory grounds for Tertiary Institution Chapters. One good thing was that they were based in Parishes not in those secondary/Primary Schools. On campus, University of Calabar, Unical Chapter held her first crusade in 1996 with Very Rev. Dr. James Ukaegbu as the Guest Speaker. The venue was the popular Malabo Kingdom (students’ hostel area of Unical, Calabar.) As mentioned earlier on, chapters were opened at various intervals on various campuses. The chronological order can fail me, but it spread like wild fire.\n"
                "\n"
                " “Kingly Family”: It is important to categorically state that the name “Kingly Family” for which PSF is known was coined by Bro Eugene Ogbo from UNN . Under Bro Gaius Onu Ndukwe (now Dr Gaius N Onu), PSF was to take another giant leap and step towards achieving her vision. It was under his administration as National President that the fellowship made dramatic changes, laying the foundation for much of what is seen today. The cornerstone for the changes in the fellowship was laid with the drafting of a National constitution for the Fellowship. The name Kingly Family was adopted as the A.K.A name of the fellowship having grown from UNN to UNEC to the ENUGU zone and some chapters in Okigwe zone and finally to the National. The senior friends or Alumni Fellowship was also recognized in the National convention as ‘’The Return of the Apostles’’ (TROTA), a name adopted from the PSF ABSU chapter. The National Leadership Training Conference (NLTC) as well as the School of the Word and Ministry booklet was instituted to strengthen capacity building, the Mission statement of the fellowship was included as an important tool to guide the fellowship, and finally, the Kingly Family song, composed by Bro Mgbemena Ebuz (now Engineer Ebuz) was accepted to enrich the rich heritage of our vision.\n",

            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
            //maxLines: 5,
            //overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("PSF UNDER YOUTH DESK OF THE PCN",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "The General Assembly of the PCN at Ikom in 1999 was very eventful: the Structuring of the Church system; the extension of tenure Office of the Principal Clerk (from 3years to 6years); Executive Moderator of General Assembly without Parish; Movement to Abuja as a pet project of PCN; the famous 30% returns to General Assembly all took place. That same year Rev. Ibe Ogboso Uka was saddled with the responsibilities of National Coordinator of the Youth Desk. For six (6) years he was coordinator of the Desk- carrying PYPAN/PSF along, yet combining it with Parish work. Suffice it to say that by my recommendations from Youth Desk to General Assembly meeting it was agreed that PSF should be separated from PYPAN for easier coordination/supervision. This separation took effect when Rt. Rev. U. B. Usung was Moderator of GA and Rev. Dr. Benebo F. Fubara-Manuel was Principal Clerk. So, by 2005 PSF was to stand on it’s own, meanwhile, conferences were held on different platforms- while PSF chose Campuses for their national conferences: Unical, EBSU, FUTO, and Unical again in 2005 November, and so on. After the Rev. Ibe Ogboso Uka, the following contributed meaningfully to the growth of PSF while serving as Youth Desk Coordinators at one time or the other. They are: Rev. Chidi Igwe, Rev. E.N. Akpanika and Rev. Akim Mbey Erim.\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("PSF BECOMES A DIRECTORATE",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "The year 2008 marked another wind of change for the Presbyterian Students Fellowship (PSF) as she sought for greater relevance and positioning in carrying out her vision. The Presbyterian Church in her bid to further integrate the fellowship and create a sense of belonging did set up a restructuring committee for greater PSF impact. The convener was Rev. Dr. E. A. Ituma. PSF was led by the then national President, Bro Obinna Kalu while Bro. Onu Gaius, the ex-officio of the then national executive council was the lead spokesperson. The product of that effort was the creation of the Directorate of the Presbyterian Students’ Fellowship in the Presbyterian Church of Nigeria. This was under Rt. Rev. U. B. Usung who was Moderator of GA and Rev. Dr. Benebo F. Fubara-Manuel as Principal Clerk. The Directorate took off on the 1st September 2008 with the Rev Precious Okereke as the first National Director of the fellowship. Prior to the creation of the NDPSF, the National Coordinator of the youth Desk was in charge of both the PYPAN and PSF. This was also combined with Parish work. So we had The Rev Ibe Ogboso Uka, Rev Chidi Igwe and Rev E. N Akpanika (in that order) before PSF finally had her own first National Director. We recognize all their labours and recommendations that helped to grow PSF.\n"
                "\n"
                "Development: By the grace of God, PSF has experienced an all round growth under the Directorate which started with an office in Abakaliki and later relocated to Owerri where we got a portion of land/uncompleted building from Owerri Parish on which now stands the Directorate office. We will not forget the show of love and accommodation by Abakaliki Parish Owerri Parish respectively. The Directorate members who have served within this period have laboured in partnership with the Holy Spirit and the church to take the fellowship to greater heights.  We have witnessed increase in income, furnished and officially opened the national office, produced Lapels to promote national unity and identity, and repackaged PSF Impact Week. In addition, we recorded the composition of PSF Welcome song, and adoption of PSF unity Piece (comprising PSF Anthem, PSF welcome song, PSF Vision and Mission statements). We have had the privilege of receiving and enjoying the gift of laptops, an 18-seater bus and official car, (though now out of service).  In addition, the fellowship has acquired land in Abakaliki for future development, phones, manse furniture, produced impact week booklets, opened new chapters, commenced a 5 bedroom manse bungalow in 2017, launched partnership programmes, initiated scholarship grant to indigent students, hosted out reaches in schools, printed national bible study guides, and maintained her relationship with the church through the Director, Synod and Presbytery coordinators.\n"
                "\n"
                "Expansion of Chapters: Numerically, PSF has increased astronomically and has continued to grow. As at the year 2007, she had about 25 chapters at different higher institution but currently, the figure is over 60 chapters today, showing an increase. These are found in Universities, Polytechnics, Colleges of Education, Theological Colleges, Institutes, Secondary Schools and Parishes. And from 3 zones, The PSF currently has 9 zones (Abuja, Calabar, Ebonyi, Enugu, Lagos, Okigwe, Owerri, Ogoja and Uyo). Our numerical strength presently is over 2,114 students, 63 chapters and 9 zones presently.\n"
                "\n"
                "Our Commitment:	We have been actively involved in ensuring the coordination of the fellowship through Directorate, Extended Directorate, National Governing council meetings; Conventions, National Prayer Retreat, Missions week, Impact week, online webinars, opening of chapters, visitation of chapters and zones, coordinating the NYSC and PCN Corpers’ fellowship, etc. \n"
                "The Directorate is committed to advancing the vision of PSF and molding her prospects to great achievements. PSF as a directorate will continue to work for the restoration of the glory of God in the lives of the members, the church, the nation and the world at large. Our mission and evangelism focus is to draw youths to Christ irrespective of denominational affiliation and to serve as an instrument for the spreading of the gospel within and outside institution of Higher learning. \n"
                "\n"
                "Prospects: The Directorate will continue to foster unity and sense of purpose among the youth of the Presbyterian Church of Nigeria in tertiary institution; and to see to the spiritual, academic, social and general well being of her members. The directorate will remain relevant on campus and even in secondary schools especially now that youths are tempted to engage in vices like drinking alcohols, smoking, prostitution, sex, homosexuality and drugs. PSF as a youth ministry will continue to preach against such vices and help youths in understanding the dangers involved in engaging in such. The tertiary institutions are very fertile grounds for harnessing and harmonizing young stars both for academics and church ministries. Scholarship schemes will greatly attract more of our young people not only to remain Presbyterians but also to be employed as professionals after training in Presbyterian Institutions. Presbyterian Students can diversify, graduate and come back to build up Presbyterian Institutions; namely PJH Uburu, R. I.M. Ikwo, Mary Slessor Memorial Hospital Itu and of course Hope Waddell University when licensed to operate. The establishment of the directorate has been fruitful though the responsibilities before her are obviously demanding. However, we see a glorious future and believe that the labours of the PCN, the past/present PSF leaders and members will yield greater spiritual and material harvest to God’s glory!\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("VISION STATEMENT: ",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "“To Reflect His Glory (2 Cor. 3:18)\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("MISSION STATEMENT",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "The Mission Statement of PSF is “to be a model of an ideal campus Christian ministry, to nurture, train and equip the student believers not only to fulfill the great commission, but also to become active agents in this end-time kingdom reign. \n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("AIMS AND OBJECTIVE: ",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "1.	To live  for  the Glory  of  God alone   \n"
                "\n"
                "2.	To  work  for  the  advancement  of  God’s  glory  in  the  lives  of  the  members,  the  church,  the nation and the world at large.  \n"
                "\n"
                "3.	 To draw  youths  to Christ  irrespective  of denominational affiliation   \n"
                "\n"
                "4.	To  foster  unity  and  a  sense  of  purpose  among  the  youths  of  The  Presbyterian  Church  of Nigeria  in the  tertiary  institutions.   \n"
                "\n"
                "5.	To  serve  as  an  instrument  for  the  spreading  of  the  Gospel  within  and  outside  the  institutions of  higher learning.   \n"
                "\n"
                "6.	To see  to the  spiritual, academic, social and  general well-being  of her members.   \n"
                "\n"
                "7.	To  pursue,  uphold  and  defend  social,  economic  and  ecological  justice  as  integral  to  the gospel.   (PSF  Constitution  –  Amended  Draft)   \n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("RELEVANCE OF PSF  ",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "1.	Evangelism and Mission : looking at the vision , mission,  aims of the objective of PSF, It is not difficult to see that the PSF is an evangelical and mission minded group who will be a dependable tool for preaching the gospel not only to young student believers  but also to reach out to unbelievers. Many non-Presbyterians are part of the fellowship through evangelism.  \n"
                "\n"
                "2.	To arrest the Youth drain in the church: It is no longer news that there is a youth drain in the church. Most significant are youths who leave for the higher institution to further their education. Most of the youth clearly misunderstand the church. PSF having a big role to play in youth ministry can help arrest the drain by presenting a different perspective of church and ministry to young people.\n"
                "\n"
                "3.	A role model to career minded youths: PSF plays a role as model for upcoming young people. The body has potential to encourage those who are career minded as well as assist them to fulfill their dreams.\n"
                "\n"
                "4.	Protect youths against social vices: On campus and even in secondary schools now, youths are tempted to engage in vices like alcohols, smoking, prostitution, sex, homosexuality and drugs. PSF as a youth ministry preaches against such vices and helps youth in understanding the dangers involved in engaging in such.\n"
                "\n"
                "5.	The working class parishioners are important to maintain the life of the church. As a result of the nature of the PSF and the interaction amongst members, many Presbyterians can return back to the church after their higher education.\n"
                "\n"
                "6.	Lay development: many PSFites with their exposure are equipped to handle lay ministry once they are back in church.\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("The Family Song:",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "1. Oh Lord. You have been our God\n"
                "You have been our strength\n"
                "Through the ages past\n"
                "And we are dwelling in your will\n"
                "Abiding in your love\n"
                "By your grace we stand\n"
                "You’ve made us kings over the earth\n"
                "To reign with you\n"
                "A kingdom of priests, your Holy ones\n"
                "\n"
                "Chorus\n"
                "We’re the Kingly Family \n"
                "We are the chosen of the Lord\n"
                "Building a people of power and praise\n"
                "Reaching the world with your love \n"
                "And declaring your will\n"
                "Oh king of Glory\n"
                "To reflect His glory\n"
                "\n"
                "2. You reign, with a scepter in your hand\n"
                "Authority and power\n"
                "Lord belongs to you\n"
                "And now, Majesty we bow\n"
                "In honour of your name\n"
                "You deserve the praise\n"
                "Glory, honour and power to you, our God\n"
                "Who sits on the throne\n"
                "Our Potentate\n"
                "\n"
                "The Welcome Song:\n"
                "The kingly family welcomes you\n"
                "We are aimed at reflecting His glory 	\n"
                "A place where the word of God is preached undiluted\n"
                "Come receive the power to be a king \n"
                "You are welcome in Jesus name. \n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size, fontStyle: FontStyle.italic),
          ),
        ),
        // Expansion card
        Container(
          child: ExpansionTileCard(
            elevation: 5.0,
            baseColor: Colors.cyan[50],
            expandedColor: Colors.red[50],
            title: Text(
              "PROFILE OF VERY REV DAVID AMA KALU",
              style: TextStyle(fontSize: 17.5),
            ),
            subtitle: Text(
              "NATIONAL DIRECTOR, PRESBYTERIAN STUDENTS FELLOWSHIP ",
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
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.only(top: spacer),
                      child: Text(
                        "Very Rev. David Ama Kalu was born on 29th October 1979 to the family of Most Rev. Innocent Ama Kalu, of Umuzomgbo Ihechiowa in Arochukwu Local Government Area of Abia State. He attended Utugiyi Community Primary School, Isu (1985-1988); Army Barracks Primary School, Aba, (1988-1990); Presbyterian Seminary School Ohafia, (1991-1996); the University of Calabar, (1999-2004); Essien Ukpabio Presbyterian Theological College, Itu, Akwa Ibom, (2004-2007); and Nnamdi Azikiwe University Awka, (2011-2013). \n"
                            "\n"
                            "He made a commitment to the Lord at a very young age and had a glimpse of God’s call into the ministry; he finally yielded to the call in 2003 while in his final year as an undergraduate. Consequent to thoughtful and prayerful consideration, he applied to the General Assembly of the Presbyterian Church, through the Session of PCN Umule Parish, Aba, and received approval for ministerial training at Essien Ukpabio Presbyterian Theological College Itu, having met the procedural prerequisites as outlined by the PCN.  \n"
                            "\n"
                            "The pastoral training and ministerial experience of Very Rev Kalu has been progressive as follows: Student Minister on Vacation Job, PCN Obuda Parish 2005; Student Minister on Vacation Job, PCN First Aba Parish 2006; Licensed as Minister of Word by Aba Presbytery on 22nd July 2007 at PCN Umule Parish; served Probationary year at PCN Port Harcourt Parish 2007-2008; Ordained as Minister of Word and Sacrament on 12th October 2008 by Enugu Presbytery at PCN Enugu Parish; Associate Minister PCN Enugu Parish 2008-2010; Parish Minister,  PCN New Haven Parish 2010-2011; Parish Minister, PCN Nsukka Parish 2011-2015; Associate Minister, PCN First Abuja Parish 2015-2016: National Director, National Directorate of Presbyterian Students Fellowship 2016-2022\n"
                            "\n"
                            "Very Rev. David Ama Kalu is a dynamic preacher and teacher of the Word of God and his ministerial commitments under the guidance of the Holy Spirit have edifying testimonies of Church revival and kingdom advancement. He has graciously enjoyed God’s privilege of ministering on various platforms for revival, retreats, seminars, and workshops. He has delivered papers and talks which include:  “The Functions of an Elder”, “Confidentiality and the Session” “Enforcing the PCN Policies, Practice and Procedure: An Imperative for a Consolidated Presbytery”; Roles of the Church in Socio-Political Development of Ihechiowa”; “Duties of a Session Clerk” and many others. He is one of the editors of “A Collation of Papers presented at the 2022 Ministers and Spouses Retreat of the PCN”. He has served as Convener and Secretary of Committees both at Presbytery, Synod and in Ecumenical bodies.   \n"
                            "\n"
                            "Remarkably, the Lord has provided the following leadership and service platforms for him. There include: College Chief, -Essien Ukpabio Presbyterian Theological College Itu (2006-2007); President, -Association of Presbyterian Theological Students (2006-2007); Coordinator of PYPAN/PSF -Enugu Presbytery (2009-2010); Clerk, -Enugu Presbytery (2010-2011); PSF Coordinator –Enugu North Presbytery (2011-2012); Secretary, -East Central Synod Committee on creation of Enugu Synod (2011); PSF Coordinator, -East Central Synod (2012-2015); Clerk, -Enugu North Presbytery (2014-2015); Publication Officer, -Abuja Central Presbytery (2016); Clerk, -Owerri Presbytery (2019-2021); Member, -Board of Faith and Order of the PCN (2016- 2022); Member, -General Assembly Executive Committee (GAEC) -2016- Date ; Minute Recorder, -General Assembly Executive Committee (2019- Date) ; Secretary, Congregational Ministry of Board of Faith and Order (2018-2021); National Director, -Presbyterian Students Fellowship (2016-2022); Clerk, -South Central Synod of the PCN (from May 2022), and member Board of Personnel Management of the PCN (from May 2022). \n"
                            "\n"
                            "To the glory of God he has enjoyed the privilege of representing the Church in Ecumenism, and has served in the following capacities: Youth Officer, Bible Society –Enugu (2010-2012); Chairman, Bible Society of Nigeria, Nsukka Auxiliary (2012-2015); Secretary, Ministers Prayer Network (MPN), Enugu State (2009-2011); 2nd Vice Chairman, Bible Society of Nigeria, Enugu Area (2013-2014); Board Member 1, Bible Society of Nigeria, Enugu Area, South East Zone (2014-2015); Chairman, Steering Committee of CCN, Gwagwa/Tarsha Zone -Abuja (2016); Secretary, Christian Council of Nigeria (CCN) Imo State (2020-date); Member, State Executive of Christian Association of Nigeria (CAN) Imo (2021- date)\n"
                            "\n"
                            "Very Rev. David Ama Kalu is married to his lovely wife, Mrs. Nkechinyere Ama, a music minister, teacher, and counselor, who has graciously remained his strong partner in raising and mentoring godly disciples for generational impact. They are blessed with three children: Amazing (Akachukwu), Grace (Adaeze), Divine (Chimbueze), and many foster children. His hobbies are: writing, reading, singing, and traveling; and he has the following academic qualifications: First School Leaving Certificate (1990); Senior Secondary School Certificate (1996); Bachelor of Arts (Hons) in Philosophy (2004); Master of Divinity (2007); Master of Arts -Social and Political Philosophy (2013). Rev David Ama Kalu is the author of the books, “Purpose for Living” (2002); “Sign Up for Significance” (2010); “The Broken Beacon” (2010); “Word Injection” (2018); and he is currently working on “The Bridge Force”. \n"
                            "\n"
                            "The following awards have been presented to Very Rev David Ama Kalu, in recognition and appreciation of his services to God, the Church, and society. These include:\n"
                            "\n"
                            "Special Award for Committed Service (Bible Society of Nigeria, Imo Area 1) 2022\n"
                            "\n"
                            "Distinguished Leadership Award (General Assembly of the PCN) 2021\n"
                            "\n"
                            "Excellent Stewardship Award (PCN, South Central Synod) 2021\n"
                            "\n"
                            "Ray Hope to the Youths (PYPAN, Alaenyi Parish, Owerri) 2021\n"
                            "\n"
                            "Ambassador of Christ (CLUB 80, Umuzomgbo) 2020\n"
                            "\n"
                            "Youth Role Model (PSF ABSCOHTECH Aba) 2019\n"
                            "\n"
                            "Nehemiah of our Time (PSF ALVAN) 2018\n"
                            "\n"
                            "Kingdom Builder Award as PSF East Central Synod Coordinator (NDPSF) 2018\n"
                            "\n"
                            "God’s Marshall (Ihechiowa Presbytery PYPAN) 2017\n"
                            "\n"
                            "Great Builder (PYPAN Umuzomgbo Parish) 2015\n"
                            "\n"
                            "Ambassador of Hope (PCN Edem Parish, Nsukka) 2015\n"
                            "\n"
                            "An Icon/Ambassador of Human Development (NAASS- UNN) 2014\n"
                            "\n"
                            "Youth Builder (East Central Synod PYPAN) 2013\n"
                            "\n"
                            "Friend of the College (Hope Waddell International School Ohafia) 2012\n"
                            "\n"
                            "Award of Excellence (PYPAN, New Haven Parish, Enugu) 2010 \n"
                            "\n"
                            "To God be the Glory!\n",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: size),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),

        Container(
          child: ExpansionTileCard(
            elevation: 5.0,
            baseColor: Colors.cyan[50],
            expandedColor: Colors.red[50],
            title: Text(
              "ROLL OF DIRECTORS: ",
              style: TextStyle(fontSize: 17.5),
            ),
            subtitle: Text(
              "",
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
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.only(top: spacer),
                      child: Text(
                        "Rev. Precious Okereke (2008-2010)	\n"
                            "Rev Sharon Kalu Ukah (2010-2016)\n"
                            "Rev. David Ama Kalu (2016-2022). \n",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: size),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),

        Container(
          child: ExpansionTileCard(
            elevation: 5.0,
            baseColor: Colors.cyan[50],
            expandedColor: Colors.red[50],
            title: Text(
              "ROLL OF PAST NATIONAL PRESIDENTS ",
              style: TextStyle(fontSize: 17.5),
            ),
            subtitle: Text(
              "",
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
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.only(top: spacer),
                      child: Text(
                        "Ukoha Ukoha (1995/1996)\n"
                            "Obinna Eleanya (1997/1998)\n"
                            "Ibe Ibe (1998/1999)\n"
                            "Nnanna Imo (1999-2001)\n"
                            "Ebitu I. Onuoha (2001-2003)\n"
                            "Echeme Friday (2003/2004)\n"
                            "Victor Ugwu (2004/2005)\n"
                            "Udeme Williams (2005/2006)\n"
                            "Gaius Onu (2006/2007)\n"
                            "Obinna Kalu (2007/2008)\n"
                            "Riman Etemu E (2008/2009)\n"
                            "Henry Odeh E. (2009/2010)\n"
                            "Nelson C. Okorie (2010-2012)\n"
                            "Idika Paul (2012/2013)\n"
                            "Alex Ndu Ufere (2013-2015)\n"
                            "Okechukwu Daniel I (2015/2016)\n"
                            "Chidiebere Solomon N. (2016/2017)\n"
                            "Amadi Emmanuel C (2017/2018)\n"
                            "Churchill Obo (2018/2019)\n"
                            "Joseph Samuel Anya (2019-2021)\n",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: size),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 0.1,
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("DIRECTORATE MEMBERS AND THEIR CONTACTS",
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
                  Text('Members',
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
                    'Very Rev. David Ama Kalu ',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                  Text('PSF Director ', textAlign: TextAlign.center),
                  Text('08037840584', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Ukoha, Samuel Ezera	PSF ', textAlign: TextAlign.center),
                  Text('National President ', textAlign: TextAlign.center),
                  Text('08104511894', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Oku, Ambrose Pius', textAlign: TextAlign.center),
                  Text('National Secretary', textAlign: TextAlign.center),
                  Text('08159419553', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Oko, Glory Ada	', textAlign: TextAlign.center),
                  Text('Nat. Sister’s Coord/Fin Sec',
                      textAlign: TextAlign.center),
                  Text('08102462507', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Asuquo, Blessing Okon', textAlign: TextAlign.center),
                  Text('National Treasurer', textAlign: TextAlign.center),
                  Text('08102952551', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Okpa Praise', textAlign: TextAlign.center),
                  Text('Nat. Organizing Sec ', textAlign: TextAlign.center),
                  Text('08167294582', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Ukonu Michael ', textAlign: TextAlign.center),
                  Text('Nat. Prayer Coord', textAlign: TextAlign.center),
                  Text('07062998138', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Ikechukwu Peter C. ', textAlign: TextAlign.center),
                  Text('Nat. Missions Coord', textAlign: TextAlign.center),
                  Text('08101510456', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Elder Mrs. Nkechi Chukwu', textAlign: TextAlign.center),
                  Text('Recorder', textAlign: TextAlign.center),
                  Text('08068488539', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Anya, Samuel Joseph	', textAlign: TextAlign.center),
                  Text('Ex-Officio', textAlign: TextAlign.center),
                  Text('08070405041	', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Mr. Samuel C. Umesi	', textAlign: TextAlign.center),
                  Text('Alumni Board Chairman', textAlign: TextAlign.center),
                  Text('08063404097', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Dr. Gaius N. Onu', textAlign: TextAlign.center),
                  Text('Alumni Rep', textAlign: TextAlign.center),
                  Text('08052340921', textAlign: TextAlign.center),
                ]),
              ],
            )),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("SYNOD COORDINATORS AND THEIR CONTACTS",
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
                  Text('Synod',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Contacts',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                TableRow(children: [
                  Text(
                    'Rev. Itohowo Akan',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                  Text('Akwa Synod Coordinator', textAlign: TextAlign.center),
                  Text('08038722343	', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Rev. Bassey Ekanem	', textAlign: TextAlign.center),
                  Text('Calabar Synod Coord 	', textAlign: TextAlign.center),
                  Text('08089202326', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Rev. Jones O. Kalu', textAlign: TextAlign.center),
                  Text('East Synod Coord ', textAlign: TextAlign.center),
                  Text('07039793426', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Rev.', textAlign: TextAlign.center),
                  Text('East Central Synod Coord', textAlign: TextAlign.center),
                  Text('', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Rev. Ikechukwu Anaga', textAlign: TextAlign.center),
                  Text('Niger Delta Synod Cord', textAlign: TextAlign.center),
                  Text('08034257977', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Rev. Ibe Uduma Obasi', textAlign: TextAlign.center),
                  Text('South Central Synod Coord',
                      textAlign: TextAlign.center),
                  Text('08063309079', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Rev. Etido Essiet	', textAlign: TextAlign.center),
                  Text('Upper Cross Synod Coord', textAlign: TextAlign.center),
                  Text('07035356010', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Rt. Rev. Sunday Ina Kalu', textAlign: TextAlign.center),
                  Text('Mid. East Synod Coordinator',
                      textAlign: TextAlign.center),
                  Text('07066912140', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Rt. Rev. Ayene E. Etim', textAlign: TextAlign.center),
                  Text('North Synod Coordinator', textAlign: TextAlign.center),
                  Text('07067214764', textAlign: TextAlign.center),
                ]),
                TableRow(children: [
                  Text('Rev. AniekanAbasi Edim', textAlign: TextAlign.center),
                  Text('West Synod Coordinator', textAlign: TextAlign.center),
                  Text('08064331953', textAlign: TextAlign.center),
                ]),
              ],
            )),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text("MAJOR PROGRAMMES OF NDPSF",
              textAlign: TextAlign.center,
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1)),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "-National Governing Council (NGC) Meetings – Hosted 3 times in a year in 3 respective Zones \n"
                "-Directorate/Extended - (Directorate office or Virtual) March/July/November \n"
                "-Mission week: 2nd week of May  \n"
                "-Impact week: 2nd Wednesday to Second Sunday of July, yearly\n"
                "-National Convention (Once in 2 years)\n"
                "-National Prayer Retreat –October\n"
                "-Orientation/Handover November (Directorate office) \n"
                "-Anniversary Celebration –Every 5 years\n"
                "-National Alumni Convention –once in 3years \n"
                "-Zonal Conference –In a year National Convention does not hold\n",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: size),
          ),
        ),
      ],
    );
  }
}
