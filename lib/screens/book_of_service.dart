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
              "PREAMBLE ",
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
             "The Minister shall then say to the parents:\n"
               "Do you personally own and confess the Apostolic faith which we have just recited?  \n" 
"(Parents’ response :) I DO  \n \n"  
"In bringing forward your child (children) FOR BAPTISM, DO YOU ANEW PROFESS YOUR FAITH  IN God as your heavenly Father, in Jesus Christ as your Lord and Saviour, and in the Holy Spirit  as your guide and upholder throughout life? 
\n"  
"(Parents’ response :) I DO \n \n"  
"Do you promise so to believe that your child (children) will have in you a good example of  Christian living?  \n"  
"(Parents’ response :) I DO \n  \n"  
"Do you undertake to bring up your child (children) in the knowledge and love of Jesus Christ  as the Lord of life? \n"  
"(Parents’ response :) I DO \n \n"  
"The congregation stands, and the Minister addresses them saying:  \n"  
   "Do you, the members of this congregation, promise to receive this child (these children) in  love as fellow members of the Church and to pray for him (her, them) and help him (her, them)  by your examples in the Christian life? \n "
              "(Congregational response :) WE DO \n \n" 
              "The Lord bless you and your child(ren), and give you grace to fulfil these promise. \n"
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
              "THE PRAYER OF SANCTIFICATION \n" 
"One of the following prayers may be said:",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
            "Let us pray: \n \n"
               "Heavenly Father, almighty and everlasting God, who has not left us as strangers without the  covenant of promise, grant unto these Your servants the grace to perform the things which  they have promised to you that they will do. We bring this child (these children) to You with  the assurance that it is not Your will that one of these little ones should perish. We humbly  ask You to bless this Your ordinance which is now to be administered, and to sanctify this  water to the spiritual use to which You have appointed it. Heavenly Father, grant that this  child (these children) may obtain, through the inward baptism of Your Spirit, the remission of  sin, and be born again of water and the Holy Spirit, that being planted into the likeness of the  death and resurrection of Christ, and receiving of the fullness of Your grace, he (she, they)  may ever remain in the number of Your faithful children; through Jesus Christ our Lord. AMEN.  \n  \n" 
"Or,  \n \n"  
"Most merciful and loving Father, we thank You for the Church of Your Son our Saviour, the  ministry of Your Word, and the sacraments of grace. Especially do we praise You now for the  institution of this sacrament of holy baptism wherein You gives such gracious promises for  our children, and do seal them in Christ for Your own. Sanctify this water to the spiritual use  to which You have ordained it, and grant that this child (these children) now to be baptized  with it may one day also be born again of water and the Holy Spirit, and ever remain in the  number of Your faithful children, through Jesus Christ our Lord. AMEN.\n"  
"Almighty and everlasting God, who of Your infinite mercy and goodness has promised to us  that You will be not only our God but also the God and Father of our children, we ask that as  You have been pleased to call us into the fellowship of faith, that it may also please You to  sanctify with Your Spirit, and to receive into Your family this child (these children) whom we  now bring before You. Grant, we pray, that when he (she, they) may confess You as the only  True God, and Jesus Christ whom You have sent, and so serve You that when his (her) life is  (their lives are) ended, he (she, they) may be brought as a living member of Christ’s Body unto  the full fruition of Your joys in heaven, where Your Son our Saviour reigns with You and the  Holy Spirit, ever one God, world without end. AMEN." ,
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
              "THE ACT OF BAPTISM ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
            " As the parents present their children, the father of the child shall hand the infant (or  child) to the Minister. If the father cannot be present, an Elder or a guardian may  present the child. An Elder (Clerk of Session) may assist the Minister by lining up the  children with their parents and announcing the full name of the child to the Minister  in turn. Or alternatively, the Ministry may directly ask the parents the child’s name  by saying “what is this child’s name?” \n \n" 
"The Minister calls each child by name, sprinkles or pours water on the child’s head  and saying during each baptism:  \n " 
"N…… I baptize you in the name of the Father, and of the Son, and of the Holy Spirit.\n \n " 
              "Then the Minister may add if he or she so desires:  \n " 
              "The blessing of God almighty, Father, Son and Holy Spirit descend upon you, and dwell in your  heart for ever. AMEN.   \n " 
              "The Minister then hands the child back to the mother.    \n " 
              "After all have been baptized, the Minister says: \n \n " 
              "According to Christ’s commandment this child is (these children are) now received into the  membership of the holy universal church, and is (are) engaged to confess the faith of Christ  crucified, and to courageously fight under His banner against sin, the flesh, the world and the  devil. May he (she, they) continue as Christ’s faithful soldiers and servants to his (her, their)  life’s end. \n ",
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
              "THE BLESSING",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "After all of the baptism have been completed, the congregation stands and the Aaronic blessing is  sung or said: \n" 
"The Lord bless you and keep you.\n"
"The Lord make his face to shine upon you, and be gracious unto you: \n \n" 
"The Lord lift His countenance upon you and give you peace. Amen. 
(Num. 6:24-26)  \n" 
"The congregation shall be seated, and the Minister shall say:",
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
              "The prayer of Blessing ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
            "Let us pray. \n \n" 
"We bless Your name, O merciful God, that You have now given this child (these children) a  place in Your Church. We earnestly pray that he (she, they) being ingrafted into Christ, may  grow in His Grace and in due time may put his (her, their) faith in You, and continue therein  till death takes him (her, them) to be eternally at home with You. \n \n" 
"For Christian homes and families, we praise You, O God. For Your mercy to this (these)  mother(s) in childbirth, we give You thanks. Bless, we pray, the home(s) of this (these) little  one(s), the parents and all who have the care of him (her, them) that they may be enabled by  Your grace and led by Your wisdom to train him (her, them) by percept and example in the  love and fear of Your name. \n \n"
"Make real to us all, O God, the meaning of this sacrament. Forgive us where we have failed in  the grace of our own baptism, and bring us back with a hearty repentance. May we also from  this time forward, walk more humbly in obedience to You and in love toward one another as  those who have been baptised by one spirit into one body: through Jesus Christ our Lord.   \n" 
"The Lord’s Prayer:   \n" 
"OUR FATHER…… \n \n" 
"The Minister then pronounces one of the following benedictions:  \n"
"The grace of the Lord Jesus Christ, and the love of God, and the communion of the Holy Spirit  be with you all. AMEN. (1 Cor. 13:14) The children and their parents return to their seats and the service continues. The Apostle’s creed and  the Lord’s Prayer are not used again in the service.",
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
              "ORDER FOR THE ADMINISTRATION OF THE SACRAMENTS OF BAPTISM TO  ADULTS",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "Before an adult is baptized, he or she must have received some general instruction in the  Christian faith and especially the meaning of baptism. The candidate will also have met with  the Session. \n \n" 
              "After the sermon and the Apostle’s Creed, a baptismal hymn should be sung: the Minister  shall then call for those to be baptized to come to the front of the sanctuary and stand before  the Ministry at the baptismal font.\n"  ,
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
              "PREAMBLE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "Dearly Beloved: The sacraments of baptism is an institution which our Lord Jesus Christ  commanded His disciples to do when He said to them: \n" 
"All authority in heaven and on earth has been given to me. Go therefore and make disciples  of all nations, baptizing them in the name of the Father and of the Son and of the Holy  Spirit, teaching them to observe all that I have commanded you, and lo, I am with you  always to the close of age. (Matt. 28: 18-20) \n \n" 
"St. Peter also on the Day of Pentecost, called the people, saying, Repent, and be baptized  every one of you in the name of Jesus Christ for the forgiveness of your sins; and you  shall receive the gift of the Holy spirit. For the promise is to you and to your children  and to all that are far off, every one whom the Lord our God calls to him. (Acts 2:38-39) \n \n" 
"This call to repentance and faith in Jesus Christ and to confession in this sacrament, is  addressed to you. Make sure that you truly profess your faith and are baptized into His name, that this sacrament shall be to you the sign and seal of the washing away of your sins, of your  ingrafting into Christ, of your regeneration by the Holy Spirit, and of your engagement to be  the Lord’s in the fellowship of His Church." ,
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
           
              "THE VOWS",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "The minister shall then say to the candidate(s): \n" 
"For as much as you present yourself for baptism, it is necessary that you sincerely give answer  before God and His church to the questions which I now put to you.  \n \n" 
"Do you confess your faith in God as your heavenly Father, in Jesus Christ as your Saviour and  Lord, and in the Holy Spirit as your Sanctifier and guide?\n"
"(Candidates’ response :) I DO \n \n" 
"Do you repent of your sins with a humble and contrite heart, and put your trust in the mercy  of God which is in Jesus Christ? \n" 
"(Candidates’ response :) I DO   \n" 
"The Minister ask the congregation to stand, and addresses them saying: \n \n"
"Do you promise to receive these friends in love as fellow members of the Church, and to pray  for them and help them in their service for the Lord Jesus Christ? If so, please respond by  saying “WE DO.” \n"
              "(Congregation’s response :) WE DO \n" 
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
              "THE PRAYER OF CONSECRATION",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "Let us pray.  \n \n" 
"Almighty and everlasting God, whose blessed Son, Jesus Christ our Lord, has ordained this  holy sacrament; mercifully look, we pray, upon us who are gathered together in His name,  and ratify in heaven that which, by His appointment, we do upon earth.   
Graciously, accept these Your servants, we pray, that they, coming to You in baptism may  receive forgiveness of sins and being born anew of water and of the Holy Spirit, may die to sin  and live to righteousness.  
 \n \n"
"Sanctify this water to its appointed spiritual use to which You ordained it, and grant that these  Your servants to be baptized may receive the fullness of Your grace, and ever remain in the  number of Your faithful people; through Jesus Christ our Lord. AMEN. ",
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
             "The Minister indicates for the candidates, each in turn, to kneel. Calling the candidate’s name, the Minister  sprinkles or pours water on the candidate’s head, and saying during each baptism:  \n \n" 
"N….. I baptize you in the name of the Father, and of the Son, and of the Holy Spirit.  \n"
"The Minister may add, if he or she so desires: \n" 
"The blessing of God Almighty, Father, Son, and Holy Spirit descend upon you, and dwell in  your heart forever. \n \n" 
"The Minister indicates for the candidates to stand. When all of the adult baptisms have been  completed, the Minister shall say to the congregation.  
 \n \n" 
"According to Christ’s commandment, N… is now received into the membership of the  Church, and is engaged to confess the faith of Christ crucified, and to be His faithful soldier  and servant unto his (her, their) life’s end.",
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
              "THE BLESSING",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "After all of the baptism have been completed, the congregation stands and the Aaronic blessing is  sung or said: \n" 
"The Lord bless you and keep you. 
The Lord make his face to shine upon you and be gracious unto you  \n \n"
"The Lord lift His countenance upon you and give you peace. Amen. 
(Num. 6:24-26)   \n" 
"The congregation shall be seated, and the Minister shall say: ",
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
              "The Prayer of Blessing ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "Let us pray. \n \n" 
"Almighty and most merciful God, we thank You for Your great goodness in receiving this  (these) Your servants into Your Church in this holy sacraments. Bless him (her, them) and pour out upon him (her, them) Your Holy Spirit. Bestow upon him (her, them) the manifold gifts of  Your grace; and that he (she, they) being now ingrafted into Christ, may receive out of His  fullness and may evermore abide in Him. Defend him (her, them) against temptation, and arm  him (her, them) to fight the good fight of faith. Grant that Your strength may be made perfect  in his (her, their) weakness, and keep him (her, them) steadfast in Your love and service to the  end.  \n \n"
"Sanctify to us all the blessing and comfort of this holy sacrament. Forgive us wherein we have  come short of the grace of our own baptism by wandering from Your ways, and bring us back  with a perfect repentance; through Jesus Christ our Lord. AMEN. \n \n" 
"The grace of the Lord Jesus Christ, and love of God, and the communion of the Holy Spirit be  with you all. AMEN. (2 Cor. 13:13) Certificates may be presented now or later. The service continues.",
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
              "AN ALTERNATIVE ORDER FOR THE ADMINISTRATION OF THE SACRAMENT OF  BAPTISM TO ADULTS ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "This order is for insertion after the sermon in the regular order of worship. \n \n" 
"The candidates shall be well instructed in the faith of the church and in the Christian way of life and  shall be examined and approved by the Minister and the Session before being accepted for Baptism.  Care should be taken to see that the candidate has not been previously baptised. The sacrament of  baptism should be administered in the presence of the congregation at a public service of worship,  and preferably not be combined with the sacraments of the Lord’s Supper, nor with confirmation. The  whole service should lead up to the baptism, and the sermon should contain a careful instruction on  the meaning of the sacraments. \n \n"
"After the sermon, and after a baptismal hymn has been sung, the persons to be baptised shall be  called forward, and shall stand before the Minister at the font. In case of baptism by immersion, the  appropriate additional preparations shall have been made.",
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
             "Jesus said, “All authority in heaven and on earth has been given to me. Go therefore and make  disciples of all nations, baptizing them in the name of the Father and of the Son and of the  Holy Spirit, teaching them to observe all that I have commanded you, and lo, I am with you  always to the close of age.” (Matt. 28: 18-20) \n \n" 
"St. Peter also on the Day of Pentecost, called the people, saying, Repent, and be baptized  every one of you in the name of Jesus Christ for the forgiveness of your sins; and you shall  receive the gift of the Holy spirit. For the promise is to you and to your children and to all that  are far off, every one whom the Lord our God calls to him. (Acts 2:38-39) \n \n"
"This call to repentance and faith in Jesus Christ, and to confession thereof in this sacrament,  is addressed to you. Be assured that as you truly profess your faith and are baptized into His  name, this sacrament will be the sign and seal of your dying and rising with Christ, of the  washing away of your sins, of your ingafting into Him, of your regeneration by the Holy Spirit,  and of your engagement to be the Lord’s in the fellowship of His Church. \n \n" 
"If not already said, the Minister and Congregation shall repeat the Apostle’s creed, saying, “Let us  reaffirm our faith in the words of the Apostle’s Creed, saying together, I BELIEVE….” ",
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
              "THE PROMISES ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "The minister, addressing the candidate(s) for baptism, shall say:  \n" 
"For as much as you present yourself for baptism, it is necessary that you sincerely give answer  before God and His Church to the questions which I now put to you.  \n \n"
"Do you own and confess the faith as affirmed in the Apostle’s Creed?  \n" 
"I DO \n \n" 
"Do you repent of your sins with a humble and contrite heart, and put your trust in the mercy  of God in Christ Jesus?  \n" 
"I DO \n \n"
"Do you promise to give regular attendance at public worship, to be regular in daily prayers  and the reading of the scriptures, and to be a faithful member of the Church of God? I DO ",
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
              "THE PROMISE BY THE CONGREGATION",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "The congregation shall stand, and the Minister shall ask them:\n" 
"Do you promise to receive this friend (these friends) in love as fellow members(s) of the  Church, and to pray for him (her, them) and help him (her, them) to be (a) faithful  member(s) of the Church of God? \n"
"(Congregation’s response :) WE DO  \n" 
"The congregation is seated, and the Minister says: ",
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
              "PRAYER OF SANCTIFICATION",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "Almighty and Everlasting God whose blessed Son, Jesus Christ our Lord ordained this holy  sacrament, look mercifully, we pray, upon us who are met together in His name, and ratify  in heaven that which, by His appointment we do upon earth. \n \n" 
"Graciously, accept Your servant(s), we pray, that he (she, they), coming to You in baptism,  may receive remission of sins, and being born again of water and of the Holy Spirit may die  unto sin and live unto righteousness.  \n \n"
"Sanctify this water to the spiritual use to which you ordained it, and grant that Your  servant(s), now to be baptized with it, may receive the fullness of Your grace, and ever  remain in the number of Your faithful people; through Jesus Christ our Lord. AMEN.",
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
              "THE BAPTISM  ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "The person to be baptized shall kneel and the Minister shall call his or her name and sprinkle or poor  water on his or her head and say (or, in cases of baptism by immersion, the Minister enters the water  with the candidate, and says the following sentence, after which the Minister immerses the person): \n \n" 
"N…. I baptize you in the name of the Father, and of the Son, and of the Holy Spirit. \n"
"The Minister may add the following blessing, if he or she desires: \n" 
"The blessing of God Almighty, Father, Son and Holy Spirit descend upon you, and dwell in your  heart forever. AMEN. \n \n" 
"After the candidates have been baptised, those kneeling down remain kneeling while those immersed  remain standing in the water, the Minister shall say: \n" 
"According to Christ’s commandment this person (these persons) are now received into the  membership of the universal holy Church and is (are) engaged to confess the faith of Christ  crucified, and to courageously fight under His banner against sin, the flesh, the world, and the  devil. May he (she, they) continue as Christ’s faithful soldier(s) and servant(s) to his (her, their)  life’s end.",
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
              "THE AARONIC BLESSING",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "Sung or said while those baptized are still kneeling or standing in the water.\n \n" 
"The Lord bless you and keep you.\n"
"The Lord make his face to shine upon you and be gracious unto you \n" 
"The Lord lift His countenance upon you and give you peace. Amen. 
(Num. 6:24-26)",
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
              "PRAYER OF DEDICATION",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "Baptised persons still kneeling, or standing in the water:\n" 
"Almighty and most merciful God, we thank You for Your great goodness in receiving this  (these) Your servants(s) into Your Church in this holy sacrament. Bless him (her, them) and  pour out upon him (her, them) Your Holy Spirit. Bestow upon him (her, them) the numberless  gifts of Your grace; and grant that he (she, they) being now ingrafted into Christ may receive  out of His fullness, and may evermore abide in Him. Defend him (her, them) against  temptation, and arm him (her, them) to fight the good fight of faith. Grant that Your strength  may be made perfect in his (her, their) weakness, and keep him (her, them) steadfast in Your  love and service to the end. \n \n"
"Sanctify to us all, O Lord the meaning of this holy sacrament Forgive us wherein we have come  short of the grace of our own baptism, by wandering from Your ways, and bring us back with  true repentance. Quicken us anew by the power of Your Holy Spirit that we may walk in  charity, humility, and godliness, as those who have been baptized by the same Spirit into one  body; through Jesus Christ our Lord. AMEN. \n \n" 
"The Lord’s Prayer:   \n" 
"If adult baptism is the only ordinance being celebrated at this service the Lord’s Prayer may now be  said \n" 
"OUR FATHER…. ",
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
              "THE GRACE ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "The grace of the Lord Jesus Christ, and love of God, and the communion of the Holy Spirit  be with you all. AMEN. (2 Cor. 13:13)  \n \n" 
"Those baptised may now return to their seats; those immersed leave the water and change into dry  clothing. The regular order of service continues. \n ",
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
              "ORDER FOR THE CONFIRMATION OF  
BAPTISMAL VOWS AND THE LORD’S SUPPER",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "The Session shall be constituted on a date prior to this service, and the Minister shall submit the  names of those who have been instructed in the faith and prepared for their first communion. When  satisfied as to their training and character, the Session shall resolve to receive them publicly into the  fellowship of the Lord’s Table.\n \n" 
"During the regular order, after the sermon and after the recitation of the Apostle’s Creed, an  appropriate hymn shall be sung. During the signing of the hymn, the Confirmands may take their  place at some convenient point near the front of the sanctuary. After the hymn, the Minister shall say  to the congregation: ",
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
             "Dearly beloved, we are about to admit to the confirmation of their baptism and to  participation in the Lord’s Supper, these persons whom I am about to name. They have  already been under special instruction in the teaching of the Church. They have met with and  been accepted by the Parish Session, and are now ready to confess their faith publicly and to  confirm the promises made at the time of their baptism.\n" 
"As the Minister or Clerk of Session calls their named, those to be confirmed take their place in front  of the Minister before the Holy table. The Minister then says:  \n \n"
"Beloved in the Lord, you have already by holy baptism been ingrafted into the Lord Jesus  Christ as members of His Church, and have been engaged to be His. God in His mercy has  brought you to this time when you may acknowledge before God and His Church the covenant then made, and you have come to confess your faith in the Lord Jesus Christ, to consecrate  yourselves to Him, and hereby to bind yourselves anew to His service. Our Lord Jesus has said:  Everyone, therefore, who acknowledges me before others, I also will acknowledge before my  Father in heaven. (Matt. 10:32) \n  \n" 
"I charge you therefore to confess your faith and to answer with all sincerity, as in the presence  of God, the questions which I put to you now.",
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
              "THE PROMISE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "Each confirmand shall answer plainly by saying “I DO.”  \n" 
"Do you confess your faith in God as your heavenly Father, in Jesus Christ as your Saviour and  Lord, and in the Holy Spirit as your Sanctifier, Guide and Upholder?\n"
"(Confirmands :) I DO \n \n" 
"Do you dedicate yourself to God, and promise in dependence on His grace to serve Him and  to walk in His ways all the days of your life? \n" 
"(Confirmands :) I DO \n \n" 
"Do you promise to give regular attendance at public worship and to be faithful in daily  prayer and the reading of the scriptures? \n" 
"(Confirmands :) I DO  \n \n" 
"Do you promise to partake regularly in the sacrament of the Lord’s Supper? \n"
"(Confirmands :) I DO \n \n"
"Do you promise to submit to the courts of the Church as being over you in the Lord? \n" "
(Confirmands :) I DO\n \n"
              "Do you promise to contribute according to your ability with your strength, and money  towards the support of the Church, and to the furtherance of the gospel at home and abroad?" "(Confirmands :) I DO \n \n"  
"Do you accept responsibility for making Christ known among your friends and neighbours:  and will you strive constantly to bear witness, by word and deed, to the Lord Jesus Christ?  (Confirmands :) I DO \n \n"  
"The congregation shall stand, and the Minister shall put to them the following question:\n" 
"Do you, the members of this congregation, promise to receive these friends in love as fellow  members of this Church, to pray for them, and to help them in their service for the Lord? If  so, you may now respond by saying “We do” \n" 
(Congregation in unison :) WE DO \n"
'The Minister then asks the congregation to be seated, after which he says:"  ,
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
              "A PRAYER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "Let us pray. \n" 
"Almighty and everlasting God, we pray that You may strengthen these Your servants with the  power of Your Holy Spirit, the Comforter, and daily increase in them Your numberless gifts of  grace – the spirit of wisdom and understanding, the spirit of counsel and might, the spirit of  knowledge and of the fear of the Lord and keep them in Your mercy unto life eternal; through  Jesus Christ our Lord. AMEN.",
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
              "THE CONFIRMATION ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "The confirmands then kneel, and the Minister preferably lays his or her hand on the head of each  confirmand in turn (or raises his or her hand in blessing over all, if there be many), saying to each one  individually (or to all together): \n \n" 
"The God of all grace, who has called you to His eternal glory, confirm you to the end, that you  may be blameless in the day of our Lord Jesus Christ.\n"
"The confirmands shall now stand, and the Minister says to them all:  \n" 
"As you have now publicly confirmed your faith, may God the Father, God the Son and God the  Holy Spirit, bless, preserve and keep you, now and for ever more. AMEN. Forasmuch as you have made confession of your faith, I do now, in the name of the Lord Jesus  Christ, the great King and Head of the Church, admit you to the fellowship of the Lord’s Table.",
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
              "THE AARONIC BLESSING ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "The congregation may then stand to say or sing the Aaronic blessing:\n \n" 
"The Lord bless you and keep you.\n"
"The Lord make His face to shine upon you and be gracious unto you \n  \n" 
"The Lord lift His countenance upon you and give you peace. Amen. 
(Num. 6:24-26)\n" 
"Let us pray.\n" 
"Almighty God, Who has founded Your Church upon earth, and has promised to preserve it to  the end, we thank You for Your great mercy to these Your children, and to Your Church, to  which You have given the joy of receiving them into full communion. We thank You that by  holy baptism they have been incorporated into the body of Christ. We thank You for their  Christian training, and for every good influence in their lives; and that You have granted to  them the assurance of Your blessing and favour. \n \n"
"Forgive, we pray, all their sis; and graciously accept them as now they dedicate themselves to  You. When they approach Your holy table to receive the communion of the body and blood  of Christ, grant them to behold the vision of His love and to be made partakers of His grace,  defend them O Lord with your heavenly grace that they may continue Yours forever, and daily  increase in *them Your Holy Spirit more and more until they come unto Your everlasting  Kingdom; through Jesus Christ our Lord, to whom You and the Holy Spirit, be all glory and  dominion, world without end. Amen. ",
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
              "DECLARATION OF RECEPTION AND WELCOME ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "The Minister shall then say to those confirmed: \n" 
"Beloved in the Lord, you are now received into the full fellowship of Christ’s Church. You have  joined those who are living stones in the household of God, and are built upon the foundation  of prophets and apostles, Jesus Christ Himself being the chief cornerstone. The scriptures say: if we walk in the light, as He is in the light, we have fellowship one with another. (1 John 1:7) Jesus said: if any man would come after Me, let him deny himself, and take up his cross daily,  and follow Me. (Luke 9:23)  \n \n"
"He who conquers, I will grant him to sit with Me on My throne, as I Myself conquered, and  sat down with My Father on His throne. (Rev. 3:21) \n  \n" 
"As a sign that you are welcomed into the Church, the Session will now extend to you the right  hand of fellowship. \n" 
"Certificate may now be presented, if so desired. The Minister may shake hands with the newly  received members who then return to their seats. The regular order of public worship continues.",
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
              "ON THE ADMINISTRATION OF THE LORD’S SUPPER  GENERAL ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "∙ Essential to every celebration of the Lord’s Supper are (a) the elements, (b) the  word of God (c) the prayer of consecration (epiclesis), and (d) partaking. ∙ Every Lord’s Supper is a communal act; it must be sanctioned by the Session  and minuted, either as a fixed regular observance in the church stating the  frequency and location, or if irregular, for each particular observance. The  Session must also give approval for every observance outside of the Church  building, whether with the infirmed or for special occasions. \n \n" 
"∙ Only Ministers of Word and Sacrament may administer the Lord’s Supper. They  may not authorise Elders or any other person to do so on their behalf.  ∙ To regard the Lord’s Supper as merely a commemoration of Jesus’ death is to  belittle the sacrament. Christ is alive, present at His table and in the heart of  all believers, and speaks to and blesses those who truly listen.  ∙ To regard the Lord’s Supper as a magical rite is wrong.\n \n"
"∙ The Lord’s Supper is never an appendage, or ‘Part Two’, to another service – not even to a Sunday morning worship service. Neither should it be  immediately followed by any other Programme or meeting. \n  \n" 
"∙ Children are not permitted to partake of the Lord’s Supper until after their  confirmation.  ",
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
              "REVERENCE FOR THE LORD’S TABLE ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "∙ “It is required of them that receive the sacrament of the Lord’s Supper, that,  during the time of the administration of it, with all holy reverence and  attention they wait upon God..., diligently observe the sacramental elements  and actions, heedfully discern Lord’s body, and affectionately meditate on his  death and sufferings.” \n"
              "- Westminster Lager Catechism, answer 174 \n"
"∙ The communion table should be reserved for that purpose, even on Sunday  when there is no Lord’s Supper. The Lord’s Supper table is not just an ordinary  table on which the communion elements happen to be laid along with  songbooks, Bibles, microphones, purses, refreshments, etc. it is not a desk, nor  a writing table. Keeping the table clear at all times ‘from all other common  uses’ is a reminder of the importance and honour of the sacrament. An  exception may be the offering plates, and even than should be limited to their  presence as an offering to the Lord. Counting money, keeping records, should  never be done on the communion table.   \n \n"
"∙ The table should be of adequate size, sufficient not only to hold the  communion vessels, but also to reflect the importance of the sacrament.  ∙ A pure white, seamless, cloth is the proper covering for the Lord’s Table when  the Sacrament is being celebrated. If the church owns other cloths in keeping with the colours of the Christian year, they may be used instead of white as  may be appropriate on all other Sundays. Out of respect to God’s, the white  cloth (as well as the others) should be kept spotlessly clean. To preserve their  cleanliness, it is wise to keep them in storage when not in use. \n  \n" 
"∙ All communion vessels and cloths should be cleansed immediately after each  use, stored well, and again polished/cleaned before the next usage.  ∙ Kneeling for the Lord’s Supper is not a Reformed practice. Sitting in the pew or  moving to special tables is. ",
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
              "PREPARING THE LORD’S TABLE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "∙ The preparatory Service is a world-wide Presbyterian tradition and to be  encouraged. However, the Lord’s Supper as a means of grace may never be  denied a member in good standing because he or she has failed to obtain his  or her Lord’s Supper card.  \n \n" 
"∙ Elders must be trained on how to serve – i.e., how to approach the Table, which  benches are their responsibility, how to return, etc. elders are also expected  to understand the Lord’s Supper well enough to explain it to others.\n \n"
"∙ The elements prepared should be in sufficient quantity so that no Assisting  Elder need return to the table for additional bread or wine.  \n   \n" 
"∙ Elements: in classical Presbyterianism, the bread and wine were kept outside  the sanctuary, formally brought in after the sermon, and similarly returned at  the end of the service. In the past few decades, it is a common practice that  the Lord’s Table is prepared and covered before the worshipers arrive, and is  visible throughout the service. Either way is correct, the latter having the  advantage of being a visual aid keeping the sacrament the central focus of the  service. \n  \n" 
"∙ Actual bread is preferred over wafers, and wine over juice. As an alternative to  sliced bread, the bread may, when convenient and suitable, be cut in large  slices from which each communicant, as it comes to him or her, breaks off a  small piece, passing the remainder to his or her neighbour.\n \n" 
"∙ Juice or wine? Either one is acceptable, as the Session may determine. The  well-known “Communion Wine” is only a trade name, and any red wine is  acceptable. With the increasing awareness of alcoholism, Session should be  concerned about serving non-alcoholic drink. The church’s ban on alcoholic drinks does not apply to the Lord’s Supper, which is a sacrament.  
Individual cups or a common chalice? Either is acceptable. Even where  individual cups are used, it is proper to place a flagon and / or a chalice on the  Table to help preserve the ancient symbolism. The reason for individual cups  is mostly for health, so as not to pass an illness to the next person. Therefore, there should be enough cups for the entire congregation. Refilling the  individual cups during the Lord’s Supper defeats sanitation. ",
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
              "ADMINISTRATION THE LORD’S SUPPER",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "∙ All assisting Elders must be present for the entire service, sitting either on the  left and right of the Minister, or in a row in front of the Lord’s Table. All should  be moderately dressed, in keeping with the reverence for the occasion. If the  congregation has a policy of wearing Elder’s robes, all assisting Elders must  conform. \n \n" 
"∙ Encourage all worshippers to stay, even if they are not partaking. The Lord’s  Supper is not merely for a selected group within the church who happen to be  holding communion cards. “Drink you all of it.” Even those who cannot  participate ought to observe what is being done; for children, it becomes a kind  of anticipatory preparation for later years, while for persons under discipline,  it should become a corrective reminder of awfulness of their offence and  behaviour unbecoming of a Christian. There should be no unnecessary moving  about during the service, or people going out.  \n \n"
"∙ Only the Minister of Word and Sacrament puts anything of the sacrament on  or off the Lord’s Table. Elders may assist, both with preparations and in  removing or replacing the cloth covering during the service. The Minister is to  maintain an orderly arrangement of vessels on the Table. \n   \n" 
"∙ Order of distribution: it is common practice for the Minister to serve himself  or herself first, then serve the assisting Elders, and then the congregation.  However, as Jesus took the form of a servant humbly washing the disciples’  feet immediately before introducing the Lord’s Supper, there is justification in  serving the congregation firs, the assisting Elders next, and the Minister last. \n \n" 
"∙ Order of distribution: it is common practice for the Minister to serve himself  or herself first, then serve the assisting Elders, and then the congregation.  However, as Jesus took the form of a servant humbly washing the disciples’  feet immediately before introducing the Lord’s Supper, there is justification in  serving the congregation firs, the assisting Elders next, and the Minister last.  \n \n" 
"∙ No more bread or wine should be used at the service than is absolutely  necessary. But if more is required than has been consecrated, the additional  bread and/or wine required should be laid on the table and the Minister should  offer a brief prayer of consecration. \n \n"
"∙ Disposal of unused elements: While it is true that the elements have been  consecrated in the service, it is their use that is blessed; the elements in  themselves have not changed. Presbyterians do not believe in  transubstantiation; if a Minister insists on partaking the remaining elements,  he or she is following Roman Catholic and Anglican theology, not Presbyterian  and Reformed theology. It is important that any of the consecrate elements  that remain unconsumed should not be used for any other purpose. They  should therefore be reverently disposed of by the Minister immediately after  the service. ",
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
              "COMMENTS",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "∙ The Lord’s Supper is a full and complete service, not to be added on to anything  else. Baptism and Confirmations should not be administered at the same time.  If, however, due to unusual circumstances, baptism, confirmation or admission  of new members must be done at the same service with the Lord’s Supper,  they should precede the sacrament.  \n \n" 
"∙ Simultaneous communion – when all hold their bread or individual cups until  all have been served and all eat and drink together – may demonstrate a kind  of unity in drinking, but it does not suggest the kind of unity between the  believer and Christ which the sacrament primarily represents. It is doubtful  that at the institution of the Lord’s Supper, our Saviour had His disciples drink  simultaneously. The practice is not encouraged.   \n \n"
"∙ Private communion? It is an ancient custom to administer the Lord’s Supper in  private to the sick of the parish during the week following the communion  service, or during the afternoon of the same day. It is not permissible to send  an Elder with elements from the service held in the Church; the Minister must  personally administer the Lord’s Supper to the ill, accompanied by a member  of the Session. The Lord’s Supper must not be administered as if it were the  last rites or extreme unction of Roman Catholicism. Serving communion to the  bride and groom in a wedding service is not a Reformed practice because of its  associations with Roman Catholic theology and because the Lord’s Supper is  always for the whole gathering of Christians. The Lord’s Supper may not be  administer for money.\n  \n" 
"∙ Maundy Thursday: the Lord’s Supper was instituted on a Thursday evening,  and there is good reason to celebrate it (or hold a Preparatory Service) the  Thursday evening before Easter, rather than on Easter itself. ",
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
              "AN ORDER FOR A PREPARATORY SERVICE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "The people having met, shall be encourage by the Minister (or leader) to observed a period of silence,  so as to encouraged an atmosphere of meditation.",
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
              "THE APPROACH",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "The call to Worship\n \n" 
"Let us worship God.\n \n" 
"A Hymn of Prayer, Aspiration, or Holiness\n \n" 
"Sentences \n \n"
"With what shall I come before the Lord, and bow my self before God on high? He has showed  you, O man, what is good; and what does the Lord require of you but to do justice, and love  kindness, and to walk humbly with your God. (Micah 6:6,8) \n \n"
"The sacrifice acceptable to God is a broken spirit; a broken and contrite heart, O God, You will  not despise. (Psalm 51:17)\n \n" 
"Let us pray. \n \n"
"Prayer of Adoration \n"
"Before the glorious throne of Your majesty, O Lord, and the awful judgement seat of Your  burning love, we Your people do kneel with cherubim and seraphim and arch angels,  worshipping, confessing, and praising You, Lord of all, Father, Son, and Holy Spirit. Amen.\n \n" 
"Prayer of Confession  \n"
"If we say we have no sin, we deceive ourselves, and the truth is not in us. If we confess our  sins, he is faithful and just, and will forgive our sins and cleanse us from all unrighteousness.  (1 John 1:8-9)\n \n" 
"We acknowledge, O God, our many faults, our broken vows, the hardness of our hearts, the  weakness of our faith, and the poverty of our service.\n \n" 
"Have mercy upon us, O God, according to Your steadfast love; according to Your abundant  mercy blot out our transgressions. Create in us a clean heart, O God, and put a new and right  spirit within us. Casts not away from Your presence, and take not Your Holy Spirit from us.  Restore to us the joy of Your salvation, and uphold us with a willing spirit. (cf. psalm 51:1.10-12) \n \n"
"Prayer of Supplication \n"
"Most gracious Father, Who has called us to the holy table of our Saviour, to show His death  and to receive His gift of life; enable us to make the memorial of our Saviour’s sacrifice with  adoration and praise. Open our eyes to behold the vision of His love, and pour into our souls  the fullness of His grace. And grant that, yielding ourselves to You, we may henceforth live as  those who are not their own but are bought with a price; through Jesus Christ our Lord, to  whom with You and the Holy Spirit be all honour and glory, world without end. AMEN.\n \n"
"The First Lesson \n \n" 
"A Hymn of Praise  \n \n"
"The Second Lesson  \n \n"
"The Prayer of Thanksgiving\n \n"  
"Let us pray. \n \n"
"Almighty and everlasting God, our heavenly Father, we praise You for Your goodness to us  and to all men: for Your faithfulness which is from one generation to another, for Your mercies  which are more than we can number, and for Your Fatherly hand ever upon us, in health and  sickness, in joy and sorrow, in life and death\n \n". 
"Above all, with Your whole church throughout the world, we adore You for Your love in the  redemption of mankind by our Lord Jesus Christ; through whom we humbly offer unto You  our most hearty thanks and praise. We bless You for the descent of the Holy Spirit; for Your  Church filled with His Presence; for our baptism and nurture in the faith; and for the great  hope of everlasting life Especially at this time we praise You for the Sacrament whereby You  feed our souls with the bread of life.  \n \n"
"For all these things, glory be to You, Lord God Almighty; blessed be Your name, for ever and  ever. AMEN. \n \n"
"Prayer of Intercession  \n"
"Eternal Father, who is good to all, and whose tender mercies are over all your works; here us  as we pray for all mankind. \n \n"
"We pray for Your whole Church, that You would enrich it with Your grace. Send forth the  knowledge of Your gospel over all the earth, and shed Your light on every land.\n \n" 
"We pray for this parish and congregation, that You would fill the heart of Your people with  love and devotion to the Lord Jesus Christ. Prepare them to receive His gifts at the holy table,  and increase in them faith, hope and charity. \n \n" 
"We pray for those who may come for the first time to the holy table, that they my be true to  their Lord and Saviour, and continue steadfast in His love and fellowship. Suffer them never  to fall away from Him but that, abiding as branches in the true vine, they may bring fruit to  Your glory. \n \n"
"Bless all nations with peace, we pray, and guide by Your Spirit all who rule therein. Give grace  to Your servant, our President, and to all who under him bear authority over us. Be favourable  to us as a nation, that we may increase in that righteousness which alone exalts a nation.\n \n"  
"We pray for all who are in sickness, sorrow and distress; for the aged, the suffering and the  dying; and for those whom we remember before You in our hearts just now……, that You  would visit them with Your healing and consolation, and grant them Your peace; through  Jesus Christ our Lord. AMEN.",
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
              "Prayer of Thanksgiving for the Faithful Departed ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
            " Eternal God, with whom live the spirits of those who in the Lord have departed this life; we  thank You for all the faithful who have found their rest in You. Especially do we remember  before You, with grateful hearts, those dear to our own souls who once sat with us at Your  holy table, but who have now entered into Your nearer presence. Grant that their example  and memory may inspire us to live a better life; that when, for us, the night comes when no  man can work, we may be counted worthy to dwell with them, in the blessed home of  everlasting light and love; through Jesus Christ our Lord, to whom, with You and the Holy  Spirit, be all honour and glory, world without end. Amen. \n" 
"OUR FATHER… \n" 
"A Hymn of Praise  ",
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
              "THE WORD",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
            " Prayer of illumination \n \n" 
"Let us pray.\n \n"  
"Grant unto us, O Lord, we pray, humble, teachable, and obedient hearts, that we may receive  what You have revealed, and do what you have commanded. As man lives not by bread alone,  but by every word of God, grant that we may ever hunger after this heavenly food and find it  in our daily provision on the way to eternal life; through Jesus Christ our Lord. AMEN. \n \n"  
"The Sermon\n \n"  
"The sermon need not be lengthy, but shall certainly call for, and encourage, self-examination in the  light of God’s holiness and Christ’s death on the cross. \n \n" 
"THE RESPONSE\n \n"  
"Let there be several minutes of silence for meditation on thoughts expressed in the sermon. If  appropriate, there may be public confession of sin and / or the reconciliation of brethren.\n \n"  
"Offerings \n" 
"Prayer of Dedication \n"   
"Most gracious God, who is at this time calling us to prepare ourselves for coming to Your  holy table, grant us the assurance of Your pardoning love, and give us grace from the heart  to freely forgive one another. Accept us as we dedicate ourselves unto You; and grant that,  feeding on Christ by faith, we may be strengthened by Your fellowship, now and forever  more. AMEN. \n \n"  
"The Benediction \n"   
"Most gracious God, who is at this time calling us to prepare ourselves for coming to Your  holy table, grant us the assurance of Your pardoning love, and give us grace from the heart  to freely forgive one another. Accept us as we dedicate ourselves unto You; and grant that,  feeding on Christ by faith, we may be strengthen by Your fellowship, now and forever more.  AMEN. [Heb 13:20] \n \n" 
"Or,\n \n"  
"The grace of the Lord Jesus Christ, and the love of God, and the communion of the Holy  Spirit be with all of you. AMEN. (2 Cor. 13:14) After the benediction, communion cards may be given out, and worshippers proceed quietly to their  own homes." ,
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
              "A BRIEF ORDER FOR A PREPARATORY SERVICE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
          " Several methods of self-examination are suggested in this order, making it very adaptable for self examination on a wide range of spiritual matters. The service should not be unduly long. Due to the nature of this service, it is best conducted by a Minister or an Elder of transparent integrity. \n \n" 
"The Call to Self-examination \n"  
"Let a man examine himself, and so eat of the bread and drink of the cup. [1 Cor 11:28] ",
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
              "THE APPROACH",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "A hymn of Consecration of Discipleship \n \n" 
"Opening Sentences: \n"  
"With what shall I come before the Lord, and bow myself before God on high? Shall I come  before him with burnt offerings, with calves a year old? Will the LORD be pleased with  thousands of rams, with ten thousand of rivers of oil? Shall I give my firstborn for my  transgression, the fruit of my body for the sin of my soul? He has told you, O Mortal, what is  good; and what does the lord require of you but to do justice, and to love kindness, and to  walk humbly with your God? The sacrifice acceptable to God is a broken spirit; a broken and  contrite heart, O God, thou will not despise. (Micah 6:6-8; Psalm 51:17)  \n \n"
"Prayer of Approach, Confession, and Supplication \n" 
"These prayers shall reflect the holiness of God, our sins, and an appeal for divine help.",
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
              "THE WORD",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "Old Testament Lesson: Isaiah 53 \n" 
Or,\n" 
              "Isaiah 58, or 2 Chronicles 30:13-21 or Exodus 12:1-28 \n \n" 
"Psalm 26 \n" 
"Or, Psalm 51, or 84, or 103. \n \n" 
"A Hymn\n"  
'This hymn shall be on the holiness of God, the death of Christ, consecration, or  discipleship. \n \n" 
"New Testament Lesson: 1 Cor. 11: 23 -32\n" 
"Or,\n"
             " Matt. 26:17-30, or John 10:22-43, or John 13:1-17, or John 1:1-21, or Phil. 2:5-13  or Hebrews 10, or Hebrews 12, or 1 Cor. 10 :1-17 ",
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
              "THE EXHORTATION ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
            " EXHORTATION \n"
"Dearly Beloved: it is right that we who would come to the Lord’s Table should study the  mystery of this sacrament. The mystery is this: that Christ truly gives to us His body and blood  as food and drink of everlasting life. The Good shepherd has laid down his life for the sheep;  He who was without guilt has died for sinners the Bridegroom for His bride, the Church. In  obedience to the Father’s will and in infinite love to us, the High Priest has offered Himself as  the perfect sacrifice. By His Death He has done away with all that stood in the way of our  fellowship with God the Father, that we may surely be His Children, be upheld by His love. Be guided by Him all the days of our life, and rejoice in the hope of His glory. In the Fellowship of  His sufferings He calls us to crucify the bad ways in our lives and to bear trials and sufferings  patiently to the glory of his name. In the power of the resurrection he calls us to newness of  life. In the fellowship of His spirit He joins us together, and seeks to change us into His image.  By the same Spirit He pours His love into our hearts, so that we may love one another. \n \n"
"If any man or woman will not take this to heart, but plans to continue in sin and  unrighteousness, let him or her not approach the table of the Lord. “Let everyone examine himself and so let him eat of the bread and drink of that cup” The worthiness the Lord requires  from us is that we be truly sorry for our sins and find our joy and salvation in Him. For we  come to this supper, not as righteous in ourselves, but trusting in the righteousness of Christ  our Saviour. He invites us to this Holy Supper. ",
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
              "A TIME OF SELF-EXAMINATION ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
            " A Time for self-examination \n \n" 
"But if we judged ourselves, we would not be judged. Let us test and examine our ways, and  return to the LORD. Let the wicked forsake their way, and the unrighteous their thought; let  them return to the Lord, that he may have mercy on them, and to our God, for he will  abundantly pardon. (1 Cor. 11:31; Lam. 3:40; Isa. 55:6, 7) \n \n" 
"This is to be a time of quite for members of the congregation to think over their lives as an aid to self-examination,  the leader may use any of the following; \n \n" 
"∙ The Ten Commandments, or \n" 
"∙ The Beatitudes of Matt. 5: 1-12, or portions of\n"  
"∙ The Sermon on the Mount in Matt. 5:13 to 7:27, or \n"
"The Catechism, or  \n"
"The Creed \n \n"
"The leader is to instruct the congregation that there will be a pause for a minute or two after reading  each Commandment, Beatitude, phrase, etc, to allow for private reflection and confession. After each  pause, the leader may say, or have the congregation say: “O God, I (we) have sinned in this thing:  have mercy on me (us) and heal my soul (our souls) for the sake of Jesus Christ”  \n \n"
"Prayer of Thanksgiving, Intercession, and the Lord’s Prayer. \n \n"  
"CLOSING   \n \n"
"A Hymn  \n \n" 
"This hymn should again be one of consecration, such as “Take My Life and let it Be….” Or it should  anticipate the Lord’s Supper, such as “I Am Not Worthy…”  \n \n"
"Benediction  \n \n" 
"Unto God’s gracious mercy and protection we are committed. And the blessing of God  Almighty, the Father, the Son, and the Holy Spirit, be upon us and remain with us forever.  AMEN.  \n \n" 
"After the benediction, communion cards may be given out, and worshippers proceed quietly to their  homes. ",
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
              "THE GREAT ORDER FOR THE  
ADMINISTRATION OF THE SACRAMENT  
OF THE LORD’S SUPPER \n \n"  
"THE APPROACH ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
            "Vestry Prayer \n" 
"O God, You have given us minds to know You, hearts to love you, and voices to show forth  Your praise; give us now grace to dedicate ourselves freely to Your service, so that we may  reverently lead our brethren in worship in Your sanctuary and thereby uplift, strengthen, and  purify all who come to your house this day through Christ Jesus our Lord. Amen.\n \n"  
"Processional \n \n"  
"Call to Worship \n"   
"What shall I return to the LORD for all his bounty to me? I will lift up the cup of salvation and  call on the name of the LORD. I will pay my vows to the LORD in the presence of all his people.  (Psalm 116:12-14) \n \n" 
"Let us Worship God  \n"  
"A Hymn of Adoration \n \n"  
"Prayer of Adoration, Confession, and Supplication  \n"  
"Prayer of Adoration  \n" 
"Glory be to You, Father Everlasting, for You sent Your only Son into the world that we might  live through Him. Glory be to You, our Lord and Master Jesus Christ, for you brought life and  immortality to light through the gospel. Glory be to You, Holy Spirit, for You quicken us to  show the power of love in the world. Blessed are you, Father, Son and Holy Spirit, One God;  blessed be Your glorious Name forever. Amen.\n \n"   
"A call to Confession  \n" 
"Let us confess to God and to one another that we stand in need of forgiveness from Him and  from our-fellows, calling to mind our particular and our common faults. We name our self indulgence, our prayerlessness, our enmities. We name our lovelessness and luke-warmness  in the Church, our failure to provide sufficient means for winning the world for Christ. We  name our failure in the state, the disharmony in the world, the jealousies that we inflame  among our brothers, and the constant strife of man with man. Let us together make our  humble confession before the Almighty God.\n \n"   
"Prayer of Confession \n " 
"Holy and righteous Father, before whom we cannot justify ourselves or profess our  innocence, we confess the evil of our ways, without concealment and without excuse. In the  light of the sacrifice of Your Son upon the Cross, we see and acknowledge the hatefulness of  our sins. Grant us in that light also to see your great and wondrous mercy, so that we may  offer unto You the sacrifice of a humble and contrite heart. Have mercy upon us, O God, according to Your loving-kindness, according to the multitude of Your tender mercies, cancel  our transgression and grant us Your peace; through Jesus Christ our Lord. AMEN.\n \n"   
"Assurance of Pardon \n " 
"This is a faithful saying and worthy of all acceptation, that Christ Jesus came into the world to  save sinners. Let each of you, humbling yourself before God, acknowledge yourself to be a  sinner, and believe that the Heavenly Father means to be propitious to you in Jesus Christ. To  all who thus repent, and seek Jesus Christ for their salvation, the forgiveness of sins is granted,  in the name of the Father, Son, and Holy Spirit.\n \n"   
"Prayer of Supplication\n "  
"Heavenly Father, who restores to us the joy of Your salvation, help us to do good in the  present moment, give us a high resolve for the time to come, and receive our worship as a  sacrifice of righteousness in Jesus Christ our Lord, to whom with You and the Holy Spirit be all  honour and glory, world without end. AMEN. \n \n" 
"An Anthem or Psalm \n"  
"If a psalm is sung or said, it shall be followed by the Gloria patri: “Glory be to the father, and  to the son, and to the Holy Ghost; as it was in the beginning, is now and ever shall be world  without end. Amen. ” ",
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
              "The Word",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
            "The Old Testament Lesson \n" 
"A Hymn  \n"
"The Epistle Lesson\n"  
"The Gospel Lesson \n \n"  
"After the lesson, the reader shall say:\n" 
"“God be praised for the gospel of His grace”\n" 
"(Response :) GLORY BE TO YOU, O GOD. \n \n" 
"A Hymn \n \n" 
"Prayer for Illumination \n" 
"Holy Father, you have given us the bread which comes down from heaven, so that a man  may eat and never die; reveal to us now Your most Blessed Son, Jesus, in the power of His  resurrection, so that we might be nourishes unto everlasting life, for His holy name’s sake.  AMEN \n \n" 
"Sermon \n \n"  
"Ascription of Glory\n"  
"To Him who loves us and freed us from our sins by his blood, and made us to be a kingdom, priests  serving his God and father, to Him be glory and dominion for ever and ever. AMEN (Rev, 1:5b-6)",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE ECUMENICAL INVITATION   ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
            "In the name of the Lord Jesus Christ, we invite to this Table all who are members in full  communion with any branch of the church of Jesus Christ. The Table is His, and belongs by  right to all His people. Any such being present, are lovingly urged to claim their rights in Him.\n \n" 
"Hear the words of Jesus from His own lips: Come to me, all you that are weary and carrying  heavy burdens, and I will give you rest. Take my yoke upon you, and learn from me; for I am  gentle and humble in heart, and you will find rest for your souls. For my yoke is easy, and my  burden is light. (Matt. 11:28, 29; 5:6) \n \n"
"Blessed are those who hunger and thirst for righteousness for they shall be filled. ",
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
              "GATHERING AND PRESENTATION OF OFFERINGS \n" 
"The offerings are to be dedicated in the “prayer of offering” during the Lord’s Supper. \n \n" 
"THE GREAT ENTRY ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
           " A Hymn\n"  
"During the singing of this communion hymn, the Minister and assisting Elders exit to the vestry, and return,  the Minister leading the Elders who carry the elements. When the elements enter the sanctuary, the  congregation stands, and remain standing until after the Grace has been said. \n \n"  
"Let us reaffirm our faith in the words of the Nicene Creed, found on page….. ",
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
              "THE NICENE CREED ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
           " I believe in one God, the Father Almighty, Maker of heaven and earth, And of all things visible  and invisible: 
And in one Lord Jesus Christ, the only-begotten Son of God, Begotten of His Father  before all worlds, God of God, light of light, very God of very God Begotten, not made, Being  of one substance with the Father, by whom all things were made: who for us men, and for  our salvation, came down from heaven, and was incarnate by the Holy Ghost of the Virgin  Mary, and was made man, and was crucified also for us under Pontius Pilate. He suffered and  was buried, and the third day he rose again according to the Scriptures, And ascended into 
heaven, And sitteth on the right hand of the Father, And He shall come again with glory to  judge both the quick and the dead: whose kingdom shall have no end. \n"  
"And I believe in the Holy Ghost, the Lord and Giver of life, who proceedeth from the  Father and the Son, who with the Father and the Son together is worshipped and glorified,  who spake by the Prophets. And I believe one Holy Catholic and Apostolic Church. I  acknowledge one Baptism for the remission of sins. And I look for the Resurrection of the  dead, And the life of the World to come. AMEN. ",
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
              "THE PRAYER OF THE VEIL",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
            " The congregation still standing.\n" 
"O God, who by the blood of Your dear Son has consecrated for us a new and living way into  the holiest of all through the veil, that is His flesh, grant unto us, we pray, the assurance of  Your mercy, and sanctify us by Your Holy Spirit, that drawing near unto You with a pure heart  and undefiled conscience we may offer You a sacrifice in righteousness, through Jesus Christ  our Lord. Amen. ",
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
              "THE PRAYER OF OFFERING",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "The offering, previously received, are now blessed along with the elements. \n" 
"Most bountiful FATHER, we render to You all our gifts. Accepts the offering we have gathered  and use them for honour and glory. Bless unto us this bread and this cup. All things come of  You, and of Your own do we give You. Blessed be your Holy Name forever, through Jesus  Christ our Lord. AMEN.",
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
              "THE GRACE  ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
            "The grace of the Lord Jesus Christ be with you all \n"  
"The congregation may be seated.  ",
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
              "THE WARRANT",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "Beloved in the Lord, attend to the words of the institution of this holy supper, as they are  delivered by the Apostle Paul. For I received from the Lord what I also handed on to you, that  the Lord Jesus on the night when he was betrayed took a loaf of bread, and when he had  given thanks, he broke it, and said, “This is my body that is for you. Do this in remembrance  of me” in the same way he took the cup also, after supper saying, “This cup is the new  covenant in my blood. Do this, as often as you drink it, in remembrance of me” For as often  as you eat this bread and drink the cup, you proclaim the Lord’s death until he comes. (1 Cor.  11:23-26 NRSV) \n \n" 
"And now, that we may fulfil the Saviour’s institution in righteousness and joy, let us follow His  blessed example in word and action, in the name of the Father, and of the Son, and of the  Holy Spirit. \n \n"   
"As the Lord Jesus, the same night in which He was betrayed, took bread, I take these elements  of bread and wine to be set apart from all common uses to this holy use and mystery: and as He gave thanks and blessed, let us draw near to God and present unto Him our prayers and  thanksgivings. \n" 
"The Lord be with you. \n"  
"AND WITH YOUR SPIRIT.  \n"
"Lift up your hearts.  \n"
"WE LIFT THEM UP TO THE LORD. \n" 
"Let us give thanks unto our Lord God. \n" 
"IT IS MEET AND RIGHT SO TO DO. ",
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
              "THE EUCHARISTIC PRAYER",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "It is proper, it is right, and it is our obligation that we should at all times and in all places, give  thanks unto You, O Eternal God. You are from everlasting. You alone created the heaven and  the earth and all things therein. \n \n" 
"We praise You for Christ our Lord, Who in the likeness of man manifested forth Your glory,  that He might bring all people out of darkness into His marvellous light. \n \n"
"We magnify and praise You, Mighty God, Heavenly king. With angels and archangels and with  the company of heaven, we worship and adore Your glorious name, evermore praising You  and saying:  ",
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
              "SANCTUS \n"
"HOLY, HOLY, HOLY LORD GOD OF HOST, HEAVEN AND EARTH ARE FULL OF YOUR  GLORY: GLORY BE TO YOU, O LORD MOST HIGH.\n \n" 
"BENEDICTUS  ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "Blessed is He that comes in the name of the Lord \n" 
HOSANNA \n"
Hosanna in the highest. \n \n"
THANKSGIVING FOR REDEMPTION \n " 
O Holy, Almighty, and Merciful God: You gave Your Son for the life of the world, who being  very and eternal God, in perfect love became man for us men and for our salvation. Not as  we ought, but as we are able, we bless You for His life on earth, for His precious sufferings  and death upon the cross, for His resurrection from the dead, for His glorious ascension to  Your right hand, and that He fulfilled Your will and finished the work which You gave Him to  do, Until He returns in great glory.\n \n"  
COMMEMORATION \n " 
We humbly beseech You to receive this memorial of the most blessed sacrifice of Your Son  which He has commanded us to set before You. 
EPICLESIS  \n" 
…and so to sanctify with Your Word and spirit these Your own gifts of bread and wine, that  the bread which we break may be to us the communion of the Body of Christ, and the cup of  wine which we bless the communion of the blood of Christ. \n \n" 
OBLATION \n "
…in union with whom, and with the whole Church in heaven and earth, we present ourselves  unto You, soul and body, to be a reasonable, holy, and living sacrifice, through Jesus Christ  our Lord, by whom, and with whom, in the unity of the Holy Spirit, all honour and glory be  unto you, O Father Almighty, world without end. AMEN. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
            ),
          ),
          //End of Topic and Body   
            ] // Begining of Topic and Body
          //Topic
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
            ),
          ),
          //End of Topic and Body   
            v
             // Begining of Topic and Body
          //Topic
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: size),
            ),
          ),
          //End of Topic and Body    // Begining of Topic and Body
          //Topic
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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
              "THE LORD’S SUPPER ",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
             "INVITATION AND FENCING \n" 
"Beloved in the Lord, as we draw to the Lord’s Table, we are to consider how great are the  benefits of this sacraments if we come to it with understanding, faith and repentance, and  with our souls hungering and thirsting after Christ. Not unto those who live willingly in sin, or  who love self-righteousness in their hearts, or who are out of fellowship with their brethren are these benefits of Christ offered. But those, who in sorrow of heart labour under the  burden of their sins, and who, putting their trust in Christ, desire to lead a new life and to  reach out unto a greater progress in grace, are invited and encouraged in his name to come  to the Supper of the Lord, to their spiritual refreshing and the renewal of their strength. ",
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

