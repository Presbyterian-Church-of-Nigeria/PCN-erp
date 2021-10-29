import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';



/// Represents Homepage for Navigation
class BookService extends StatefulWidget {
  @override
  _BookService createState() => _BookService();
}

class _BookService extends State<BookService> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book of Service'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.asset(
        'assets/pdf/BOOK_OF_SERVICE.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}