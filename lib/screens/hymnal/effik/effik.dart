import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// Represents Homepage for Navigation
class EfikHymn extends StatefulWidget {
  @override
  _EfikHymn createState() => _EfikHymn();
}

class _EfikHymn extends State<EfikHymn> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
    PdfViewerController _pdfViewerController;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

    PdfTextSearchResult _searchResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.withOpacity(0.7),
          title: Text('Efik Hymn'),
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
            // IconButton(
            // icon: Icon(
            // Icons.search,
            // color: Colors.white,
            // ),
            // onPressed: () async {
            // _searchResult = await _pdfViewerController?.searchText('the',);
            // searchOption: TextSearchOption.caseSensitive);
            //setState(() {});
            //},
            // ),
            Visibility(
              visible: _searchResult?.hasResult ?? false,
              child: IconButton(
                icon: Icon(
                  Icons.clear,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _searchResult.clear();
                  });
                },
              ),
            ),
            Visibility(
              visible: _searchResult?.hasResult ?? false,
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.white,
                ),
                onPressed: () {
                  _searchResult?.previousInstance();
                },
              ),
            ),
            Visibility(
              visible: _searchResult?.hasResult ?? false,
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
                onPressed: () {
                  _searchResult?.nextInstance();
                },
              ),
            ),
          ],
        ),
        body: SfPdfViewer.asset('assets/pdf/efik-hymn.pdf',
            key: _pdfViewerKey,
            controller: _pdfViewerController,
            currentSearchTextHighlightColor: Colors.yellow));
  }
}
