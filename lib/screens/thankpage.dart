import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:pcn_erp/bible/utils/constants.dart';
import 'package:flutter/cupertino.dart';


/// Represents Homepage for Navigation
class Thanks extends StatefulWidget {

  @override
  _Thanks createState() => _Thanks();
}

class _Thanks extends State<Thanks> {
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
        title: Text('Appreciation'),
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
      body:// SfPdfViewer.asset(
      //'assets/pdf/ModEke.pdf',
      //key: _pdfViewerKey,
      //),
      //);
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
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            " ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: size * 1.2,

              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: spacer * 3,bottom: spacer * 1.7),
          child: Text(
            "Thanks for your contribution in making the project(PCN-erp) a success ",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: size *1.5,
              color: Colors.blueAccent,
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
              "The Leadership of the Church",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1.3)
              ,
            ),
          ),
          SizedBox(height:20.0,),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: EasyRichText(
              "His Eminence Nzie Nsi Eke  \n Prelate & General Assembly Moderator Of The Presbyterian Church Of Nigeria",
              textAlign: TextAlign.center,

              patternList: [
                EasyRichTextPattern(
                  targetString: 'His Eminence Nzie Nsi Eke',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: size*1.0),

                ),
                EasyRichTextPattern(
                  targetString: 'Prelate & General Assembly Moderator Of The Presbyterian Church Of Nigeria',
                  style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic , fontSize: size *0.9),
                ),

              ],
            ),

          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: EasyRichText(
              "Most Rev Dr Miracle Ajah  \n Principal Clerk Of The General Assembly Of The Presbyterian Church Of Nigeria",
              textAlign: TextAlign.center,
              patternList: [
                EasyRichTextPattern(
                  targetString: 'Most Rev Dr Miracle Ajah',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1.0),
                ),
                EasyRichTextPattern(
                  targetString: 'Principal Clerk Of The General Assembly Of The Presbyterian Church Of Nigeria',
                  style: TextStyle(color: Colors.blue,fontStyle: FontStyle.italic , fontSize: size *0.9),
                ),

              ],
            ),

          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: EasyRichText(
              "Rt Rev Solomon Okoro  \n Deputy Clerk Of The General Assembly Of The Presbyterian Church Of Nigeria",
            textAlign: TextAlign.center,
              patternList: [
                EasyRichTextPattern(
                  targetString: 'Rt Rev Solomon Okoro',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: size *1.0),
                ),
                EasyRichTextPattern(
                  targetString: 'Deputy Clerk Of The General Assembly Of The Presbyterian Church Of Nigeria',
                  style: TextStyle(color: Colors.blue,fontStyle: FontStyle.italic, fontSize: size*0.9 ),
                ),

              ],
            ),

          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "The Leadership of MCA CWC",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1.3)
              ,
            ),
          ),
          SizedBox(height:20.0,),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: EasyRichText(
              "Elder Engr Awa Eke Osonwa \n Chairman MCA CWC",
              textAlign: TextAlign.center,
              patternList: [
                EasyRichTextPattern(
                  targetString: 'Elder Engr Awa Eke Osonwa',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1.0),

                ),
                EasyRichTextPattern(
                  targetString: 'Chairman MCA CWC',
                  style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic, fontSize: size * 0.9 ),
                ),

              ],
            ),

          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: EasyRichText(
              "Engr Idika Okechukwu \n Secretary MCA CWC",
              textAlign: TextAlign.center,
              patternList: [
                EasyRichTextPattern(
                  targetString: 'Engr Idika Okechukwu',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: size *1.0),
                ),
                EasyRichTextPattern(
                  targetString: 'Secretary MCA CWC',
                  style: TextStyle(color: Colors.blue,fontStyle: FontStyle.italic, fontSize: size *0.9 ),
                ),

              ],
            ),

          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: EasyRichText(
              "Mr Mike Ibiam -\n Treasurer MCA CWC",
              textAlign: TextAlign.center,
              patternList: [
                EasyRichTextPattern(
                  targetString: 'Mr Mike Ibiam',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: size *1.0),
                ),
                EasyRichTextPattern(
                  targetString: 'Treasurer MCA CWC',
                  style: TextStyle(color: Colors.blue,fontStyle: FontStyle.italic, fontSize: size * 0.9 ),
                ),

              ],
            ),

          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: EasyRichText(
              "Rev Sunday Eke Ole -\n Desk Coordinator MCA CWC",
              textAlign: TextAlign.center,
              patternList: [
                EasyRichTextPattern(
                  targetString: 'Rev Sunday Eke Ole',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1.0),
                ),
                EasyRichTextPattern(
                  targetString: 'Desk Coordinator MCA CWC',
                  style: TextStyle(color: Colors.blue,fontStyle: FontStyle.italic , fontSize: size * 0.9),
                ),

              ],
            ),

          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: Text(
              "App Developer",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: size * 1.3)
              ,
            ),
          ),
          SizedBox(height:20.0,),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: EasyRichText(
              "Engr Idika Okechukwu -\n Lead Project",
              textAlign: TextAlign.center,
              patternList: [
                EasyRichTextPattern(
                  targetString: 'Engr Idika Okechukwu',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1.0),

                ),
                EasyRichTextPattern(
                  targetString: 'Lead Project',
                  style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic, fontSize: size * 0.9 ),
                ),

              ],
            ),

          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: EasyRichText(
              "Okenwa Ikwan Kevin -\n Lead App Developer",
              textAlign: TextAlign.center,
              patternList: [
                EasyRichTextPattern(
                  targetString: 'Okenwa Ikwan Kevin',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1.0),

                ),
                EasyRichTextPattern(
                  targetString: 'Lead App Developer',
                  style: TextStyle(color: Colors.blue, fontStyle: FontStyle.italic, fontSize: size * 0.9 ),
                ),

              ],
            ),

          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: EasyRichText(
              "Evelyn Okenwa Ikwan-\n Content Dev.",
              textAlign: TextAlign.center,
              patternList: [
                EasyRichTextPattern(
                  targetString: 'Evelyn Okenwa Ikwan',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: size *1.0),
                ),
                EasyRichTextPattern(
                  targetString: 'Content Dev',
                  style: TextStyle(color: Colors.blue,fontStyle: FontStyle.italic, fontSize: size *0.9 ),
                ),

              ],
            ),

          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: EasyRichText(
              "Obidigwe Kosischukwu -\n Front End Dev.",
              textAlign: TextAlign.center,
              patternList: [
                EasyRichTextPattern(
                  targetString: 'Obidigwe Kosischukwu',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1.0),
                ),
                EasyRichTextPattern(
                  targetString: 'Front End Dev',
                  style: TextStyle(color: Colors.blue,fontStyle: FontStyle.italic, fontSize: size * 0.9 ),
                ),

              ],
            ),

          ),
          Container(
            padding: EdgeInsets.only(top: spacer),
            child: EasyRichText(
              "Ayalogu Ikenna Innocent -\n UI UX Dev",
              textAlign: TextAlign.center,
              patternList: [
                EasyRichTextPattern(
                  targetString: 'Ayalogu Ikenna Innocent',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: size * 1.0),
                ),
                EasyRichTextPattern(
                  targetString: 'UI UX Dev',
                  style: TextStyle(color: Colors.blue,fontStyle: FontStyle.italic, fontSize: size * 0.9 ),
                ),

              ],
            ),

          ),
        ],
      ),
    );
  }
}

