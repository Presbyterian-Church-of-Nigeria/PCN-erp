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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
              "SIGNATURE AND DATE",
              textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1)
            ),
          ),
          // Body
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
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
            
          ),
        ],
      ),
    );
  }
}

