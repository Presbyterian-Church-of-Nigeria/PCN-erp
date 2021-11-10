import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:pcn_erp/bible/utils/constants.dart';
import 'package:flutter/cupertino.dart';


/// Represents Homepage for Navigation
class BookService extends StatefulWidget {
  @override
  _BookService createState() => _BookService();
}

class _BookService extends State<BookService> {
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
        title: Text('Book of Service'),

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
            "Book of Service",
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
             "CREATED BY: OGBMS OKON,\n GODFREY MBEKE OKORIE,\n GABRIEL STEPHEN OKON, \n BLESSING MBEKE \n 
             +2348 08 256 3483,  +2348 10 295 2551  , +2348 09 050 9834"),

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
              "THE ADMINISTRATION OF THE SACRAMENTS OF BAPTISM AND THE LORDS SUPPER \n"
              "ON THE ADMINISTRATION OF BAPTISM GENERAL ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)



            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "∙ Baptisms, both infant and adult, are always service conducted in the presence of the  congregation.  \n" 
"∙ Baptism must be administered with water, and in the name of the Father, Son and  Holy Spirit (Matt. 28:19).  \n" 
"∙ THE PRESBYTERIAN CHURCH OF NIGERIA recognizes as valid all three modes of  baptism – sprinkling, pouring, immersion. Sprinkling is the usual mode, particularly for  infants, but no Minister may deny baptism by pouring or immersion when requested  to do so. \n"  
"∙ Every baptism must have prior approval of the parish session, who must interview the  parents of infants, as well as all those age eight and above who are receiving baptism  as adults. No one may be coerced into baptism. \n"  
"∙ The proper location for the baptismal font is at the front of the sanctuary, preferably  to the congregation’s right. \n" 
"∙ It is usual to have the Clerk of session assist the Minister by uncovering the font, calling  and arranging those being baptized, caring for baptismal certificates, etc. ∙ While baptism is an event to which photographers are often invited, it must be  remembered that baptism is first of all a spiritual event, done with primary reference  to God. Photographers must respect the sanctuary as the house of God, the service as  worship, and the baptism as a divine contract. \n"  
"∙ Godparents: THE PRESBYTERIAN CHURCH OF NIGERIA follows the traditional  Presbyterian and Reformed practice of the congregation being responsible for the  Christian nurture of those being baptized – i.e. no god parents. Hence, it is very  important that the congregation actually witness (see) the baptismal act to which they  are giving their support. \n" 
"∙ Photographers and video camerapersons* must be kept to the side so as not to block the congregation’s view. If it is desired that relatives and/or other supporters witness  the baptism at close range, adequate seating should be provided at the front of the  sanctuary and they shall sit when the congregation sits, or they may stand behind the  Minister so as not to block the view of the congregation. " ,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size -1),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "INFANT BAPTISM ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),

            child: Text(
             "∙ Infant baptism should preferably be administered during the first or second month  after birth. Children who are eight years of age or older, should receive adult baptism. ∙ Parents (or guardians) who are themselves not baptised, may not take vows on behalf  of their children. Parents (or guardians) must be members in full communicant  standing. \n"  
"∙ Before infants are baptised, the parents (or guardians) must understand well the  meaning of baptism and the implications of the vows which they take. ∙ Great care must be taken that the congregation does not confuse Thanksgiving for  safe Delivery and Child Blessing with infant baptism."  
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
              "ADULT BAPTISM",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),

            child: Text(
            "∙ Children of age eight and all adults take baptismal vows on their own behalf. ∙ Candidates for baptism must understand the implications of their baptism.  ∙ Since candidates kneel for their baptism, it is usual that kneeling cushions or mats be  provided. ",



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
              "BAPTISM BY SPRINKLING",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "∙ It is not necessary to touch the forehead three times, or to make the sign of the cross,  for the baptism to be valid. \n" 
"∙ In order that the congregation may see the water, the use of ample water cupped in  the hand is preferably to a few drops on the fingertip. Sprinkling means real sprinkling,  not merely the laying on of a wet finger.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
            ),
          ),
          //End of Topic and Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              " BAPTISM BY POURING ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "∙ Baptism by pouring follows the same pattern as baptism by sprinkling, except that the  Minister pours water on the candidate’s head from a pitcher.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
                " BAPTISM BY IMMERSION ",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
                "∙ Were baptism by immersion is practiced, the entire congregation goes to a nearby  stream or river, as did Jesus in the Jordan River (Matt. 3:13). Lacking a convenient  stream or river, a borrow pit or other pool may be used, or the Church might ask to  use the facilities of a nearby Church which practices immersion. Rivers, streams, pit  and pools must be safe to enter, and at a place where the water is about one metre  deep. Infants may not be immersed.  
.\n \n"
                 "∙ Adequate preparations must be made, including…\n"
                "∙ Candidates should be instructed to come with light-weight cloths to wear in  the water (even when a baptismal gown is used), a towel with which to dry  after the baptism, a change of dry clothes, a container in which to carry home  their wet clothes, etc.  
\n"
                 "∙ If the baptismal site is a natural outdoor location, it should be cleared of any  debris, both in the water and out. \n"
              "∙ A protected place at the baptismal site must be provided for candidates to  change clothes, leave watches, glasses, and others valuables, etc. \n"  
"∙ If there is any difficulty in getting in or out of the water, there must be persons  of the same sex as the one being baptised to assist. \n"  
"∙ To avoid anyone catching cool, blankets or other clothes should be promptly  available. \n"  
"∙ The technique of immersion. The Minister enters the water first. Candidates, brought  one at a time, stand with hands clasped together over the chest before the Minister,  facing the Minister’s right or left. The Minister says the baptismal formula, “N…., I  baptise you in the name of the Father, and of the Son, and of the Holy Spirit,” then  puts one hand behind the shoulders of the candidate, holds the candidates’ hands (or  nose and mouth) with the other, “lays” the candidate backwards into the water until  completely immersed, and quickly lifts him or her to a standing position again. For  those fearing they may inhale water, the Minister may use a folded handkerchief to  cover the candidate’s nose and mouth, instead of holding the hands. It is advisably to  have a second person standing near the Minister, ready to give a steadying hand if  needed. /n"
"∙ THE PRESBYTERIAN CHURCH OF NIGERIA discourages the practice of adults –re baptism by immersion to replace one’s baptism as an infant. The value of baptism lies  not in what a human being brings to the act, but what God does through the act.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
              maxLines: 6,
             // overflow: ,
            ),
               // Begining of Topic and Body
          //Topic
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "SUITABLE TEXTS FOR SERMONS ON BAPTISM",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(  
"Old Testament: Genesis 6:9-22; Exodus 14:19-31; 2 Kings 5:9-14; Jeremiah 31: 27-34;  or Ezekiel 36: 25-28. \n" 
"Epistle: Romans 6:3-14; 1 Corinthians 10: 1-13; Ephesians 4: 1-7; or Hebrews 9: 11- 14. \n"
"Gospel: Matthew 3:13-17; Mark 10: 35-40; Luke 12: 49-53; or John 3:1-6.",  

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
              "AN ORDER FOR THE ADMINISTRATION OF THE SACRAMENT OF  BAPTISM TO INFANTS",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "The children should be brought by the parents or guardians for baptism at the earliest opportunity  after birth. Parents or guardians should be carefully instructed on the meaning of the sacrament and  their responsibility in it. Children eight years old and above should be encouraged to attend catechism  class and to take the baptismal vow themselves. \n"  
"Parents or guardians who are not baptized must not take any vows on behalf of the child(ren). The  sacraments of baptism is administered in the presence of the congregation at a full service of worship.  The service should lead up to the baptism and the sermon should contain a careful instruction on the  meaning of the sacrament. \n"  
"After the sermon and after the recitation of the Apostle’s Creed, a baptismal hymn may be sung. The  Minister shall explain that in the Presbyterian tradition the “godparents” are the congregation, and  therefore the entire congregation is asked to make its own promise. The Minister shall then call for  those to be baptised, along with their parents (or guardians) to come to the front of the sanctuary  and stand before the Minister at the baptismal font.", 

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
              "PREAMBLE ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "The Minister shall then say:  \n"  
"All authority in heaven and on earth has been given to me. Go therefore and make  disciples of all nations, baptizing them in the name of the Father and of the Son and of the  Holy Spirit, teaching them to observe all that I have commanded you, and lo, I am with you  always to the close of age. (Matt. 28: 18-20)  \n" 
"And they were bringing children to him, that he might touch them; and the disciples rebuked  them. But when Jesus saw it he was indignant, and said to them. “Let the children come to  me, do not hinder them; for to such belongs the kingdom of God.” And he took them in his  arms and blessed them, laying his hands upon them. (Mark 10: 13-14, 16) \n"
"By this sacrament of baptism, God brings His children into the family and household of faith,  and makes them members of Christ and citizens of the kingdom of heaven. Though little  children do not understand these things, yet is the promise also to them. It is the duty of those  who present their children for holy baptism to confess anew the faith wherein they are to be  baptised, and to promise to bring their children up in that faith and in the way of Christ and  His church. " ,
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
              "THE VOWS ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "The Minister shall then say to the parents: \n"  
"In bringing forward your child(ren) for baptism, do you anew profess your faith in God as your  heavenly Father, in Jesus Christ as your Lord and Saviour, and in the Holy Spirit as your guide  and upholder throughout life?  \n"  
"(Parents’ response :) I DO \n"  
"Do you promise to behave that your child(ren) will have in you a good example of Christian  living? \n"  
"(Parents’ response :) I DO  \n"
 "Do you undertake to bring up your child(ren) in the knowledge and love of Jesus Christ as the  Lord of life? \n"
              "(Parents’ response :) I DO \n"
              "The congregation is asked to stand, and the Minister address them saying:  \n"
              "Do you, the members of this congregation, promise to receive this child (these children) in  love as fellow members of the Church and to pray for him (her, them), and help him (her,  them) by your example of Christian living?  \n"
              "(Congregational response :) WE DO.  \n"
              "The congregation is asked to stand, and the Minister addresses them saying   \n"
              "The Lord bless you and your child(ren), and give you grace to fulfil these promises.  \n"
              "The congregation may be seated.",
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
              "THE PRAYER OF SANCTIFICATION ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "Let us pray:  \n" 
"Almighty and everlasting God, whose Son, Jesus Christ our Lord, Ordained this holy  sacrament, mercifully look upon us, we pray, and ratify in heaven that which by His  appointment we do upon the earth.   \n"
 "Sanctify this water to the spiritual use to which You ordained it, and grant that this child (these  children) now to be baptized may be born of water and of the Holy Spirit, and ever remain in  the number of Your faithful children through Jesus Christ our Lord. AMEN  \n" 
"O blessed saviour, who took little children into Your arms and blessed them, take this child  (these children) and seal him (her, them) for Your own: in the name of Him who lives and  reigns with the Father and the Holy Spirit, one God, world without end. AMEN. " ,
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
              "THE ACT OF BAPTISM",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "As the parents present their children, the father of the child shall hand the infant (or child) to the  Minister. If the father cannot be present, an Elder or a guardian may present the child. An elder (Clerk  of Session) may assist the Minister by lining up the children with their parents and announcing the  full names of the child to the Minister in turn. Or alternatively, the Minister may directly ask the  parents the child’s name by saying “what is this child’s name?” 
The Minister calls each child by name, sprinkles or pours water on the child’s head and saying during  each baptism: 
 \n"  
"N…... I baptize you in the name of the Father, and of the Son, and of the Holy Spirit.  \n"  
"Then the Minister may add if he or she so desires: \n"  
"The blessing of God Almighty, Father, Son, and Holy Spirit descend upon you, and dwell in  your heart forever. AMEN. \n"  
"The Minister then hands the child to the mother. After all have been baptized, the Minister says: \n"  
"According to Christ’s commandment this child is (these children are) now received into the  membership of the holy universal church, and is (are) engaged to confess the faith of Christ  crucified, and to courageously fight under His banner against sin, the flesh, the world and the  devil. May he (she, they) continue as Christ’s faithful soldiers and servants to his (her, their)  life’s end. " ,
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
              "THE BLESSINGS",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "After all of the baptisms have been completed, the congregation stands and the following  Aaronic blessing is sung or said: \n"
"The Lord bless you and keep you. \n" 
"The Lord make his face to shine upon you and be gracious unto you \n" 
"The Lord lift His countenance upon you and give you peace. Amen. 
(Num. 6:24-26) \n" 
"The congregation shall then be seated, and the Minister shall say: " ,
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
              "The prayer of Blessing",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "Let us pray \n \n" 
"Almighty and everlasting God, who has promised to be not only our God, but also the God  and Father of our children; we give You thanks for this child (these children) now received into  Your church. May Your Spirit be upon them. Help them to grow in wisdom and in stature and  in favour with God and their fellow men and women.  
 \n \n"  
"Grant that someday they may confirm the vows which have been made for them today, and  to witness their own faith in You. Make them Yours forever, for Your name’s sake. AMEN. \n \n"  
"O God our Father, we pray You to bless this congregation and every home from which these  children come. Help us to bear the responsibility of bringing our children into the faith of  Christ. Bless the parents and the guardians of the children and their homes, and make them  aware that You have given them a special responsibility. Help them always to show by word  and by example how to bring the children up in Your knowledge, in Your love and in Your fear,  through Jesus Christ our Lord. AMEN. 
\n \n"  
"The Lord’s Prayer:  
OUR FATHER…… \n \n"  
"The Minister then pronounces one of the following benedictions: \n"  
"The grace of the Lord Jesus Christ, and love of God, and the communion of the Holy Spirit be  with you all. AMEN. \n"  
"Or \n"  
"The peace of God, which passeth all understanding, keep your heart and minds in the  knowledge and love of God and of His Son Jesus Christ our Lord; and the blessing of God  Almighty, the Father, the Son, and the Holy Spirit, be among you, and remain with you always.  AMEN.  \n"  
   "The children and their parents return to their seats, and the service continues.",
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
              "AN ALTERNATE ORDER FOR THE ADMINISTRATION OF THE SACRAMENT OF  BAPTISM TO INFANTS  ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "This order differs from the preceding order in that immediately after the sermon, which should focus  on the meaning of baptism, that the baptism(s) occur and the Apostle’s creed is said as part of the  baptism rite. 
\n \n" 
"The children should be brought by the parents or guardian for baptism at the earliest opportunity  after birth. Parents or guardians should be carefully instructed on the meaning of the sacraments and  their responsibility in it. Children eight years old and above should be encouraged to take the  baptismal vow themselves. Parents or guardians who are not baptized must not take any vows on  behalf of the child(ren).\n \n"
             "mediately after the preaching of the word, the parents and their infants are called forward, taking  their place before the minister at the baptismal font in the congregation. Or, if the parent and infants  are seated together, they may come as a group during the singing of the baptismal hymn. All of the  scriptures in the preamble are to be read.",
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
              "A Baptismal Hymn \n \n"
              "REAMBLE ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
            " Our help is in the name of the Lord who made heaven and the earth. (Psalm 124:8) It is written: then Jesus came from Galilee to John at the Jordan to be baptized by him. John  would have prevented him, saying “I need to be baptized by you and do you come to me” But  Jesus answered him “Let it be so now; for it is proper for us in this way to fulfil all  righteousness” then he consented. And when Jesus had been baptised, just as he came up  from the water, suddenly the heavens were opened to him. And a voice from heaven said,  “This is my Son, the Beloved, with whom I am well pleased.” (Matt. 3:13-17) \n \n"
              "“I am come to bring fire to the earth, and how I wish it were already kindled! I have a baptism  with which to be baptized, and what stress I am under until it is completed”! (Luke 12:49-50) 
) \n \n"
              "It is also written: Then the soldier came and broke the legs of the first and of the other who  had been crucified with him. But when they came to Jesus and saw that he was already dead,  they did not break his legs. Instead one of the soldiers pierced his side with a spear, and at  once blood and water came out. (John 19:32-34)  \n \n"
              " As the risen Lord was about to ascend He said: “All authority in heaven and on earth has been  given to me. Go therefore and make disciples of all nations, baptizing them in the name of  the Father and of the Son and of the Holy Spirit and teaching them to obey everything that I  have commanded you. And remember, I am with you always, to the end of age” (Matt.  26:18b-20)  \n \n"
              "People were bringing little children to him, in order that he might touch them; and the  disciples spoke sternly to them. But when Jesus saw this he was indignant, and said to them,  Let the little children come to me; do not stop them; for it is to such as these that the kingdom  of God belongs. Truly I tell you, whoever does not receive the kingdom of God as a little child will never enter it. And he took them up in his arms, laid his hands upon them, and blessed  them. (Mark 10:13-16)  \n \n"
              " Dearly beloved, God our Father calls us and our children, into His covenant of grace made  with our fathers. Having yourselves, by nurture and faith entered into this covenant, you do  now by this act claim its benefits for your child(ren). God renews His covenant of grace in this  sacrament as a sign and seal of our dying and rising with Christ, of our ingrafting into Him, of  remission of sin through His blood, of regeneration by His Spirit, of adoption into the  household of faith and resurrection to everlasting life. Through it also we are incorporated by  Christ’s appointment into His Church and entered upon an engagement to be the Lord’s. Do not doubt, but earnestly believe that God will favourably receive this child (these children), that He will embrace him (her, them) within the arms of His mercy; that He will give to him  (her, them) the blessing of eternal life, and make him (her, them) partaker(s) of His everlasting  Kingdom 
 \n \n"
              " Let us now confess the faith into which this child (these children are) is to be baptized."
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
              "The Apostle’s Creed (Standing)\n" 
              " BELIEVE … \n \n"
              "VOWS",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "The Minister shall then say to the parents:\n",
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
"20. **Ajah, M. (2018) “Deuteronomic Tithe Laws and their Humanitarian Implications for  Christian Communities in Africa”, Stellenbosch Theological Journal, Vol. 4, No 2, 335– 358. (University of Stellenbosch, South Africa). DOI:  
http://dx.doi.org/10.17570/stj.2018.v4n2.a16. Online ISSN 2413-9467 | Print ISSN  2413-9459. \n"
"21. **Ajah, M. (2018). “The Land as a Grant in Deuteronomy and Its Economic  
Implications for Africa”, African Journal of Local Societies Initiative (LOSI), Vol.7, No.  1, 48-73 (Makurdi: Benue State University). \n" 
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
            
          ),
        ],
      ),
    );
  }
}

