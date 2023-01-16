import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:pcn_erp/bible/utils/constants.dart';
//import 'package:flutter/cupertino.dart';

/// Represents Homepage for Navigation
class Dc extends StatefulWidget {
  @override
  _Dc createState() => _Dc();
}

class _Dc extends State<Dc> {
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
        backgroundColor: Colors.deepPurple.withOpacity(0.7),
        title: Text(
          'Deputy Principal Clerk',
          style: TextStyle(
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      body: // SfPdfViewer.asset(
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
            width: 240,
            height: 240,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/dclerk.png',
                  ),
                ))),
        Container(
          padding: EdgeInsets.only(top: spacer),
          child: Text(
            "Rt. Rev. Aniefiok Victor Ekop",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: size * 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          child: SizedBox(height: 70),
        )
      ],
    );
  }

  Widget _info() {


    return Container(
      child: Text("Coming soon",textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: size * 1.5,
          fontWeight: FontWeight.bold,
        ),),
    );

  }
}
