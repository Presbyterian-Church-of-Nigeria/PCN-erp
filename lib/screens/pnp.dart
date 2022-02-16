import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:epub_viewer/epub_viewer.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class Pnp extends StatefulWidget {
  @override
  _Pnp createState() => _Pnp();
}

class _Pnp extends State<Pnp> {
  bool loading = false;
  Dio dio = new Dio();

  //Map<PermissionGroup, PermissionStatus> permissions = await PermissionHandler().requestPermissions([PermissionGroup.phone]);

  @override
  void initState() {
    super.initState();
//    download();
  }

  download() async {
    if (Platform.isIOS) {
      print('download');
      await downloadFile();
    } else {
      loading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        appBar: AppBar(
          title: const Text('PRACTICE AND PROCEDURE'),
        ),
        body: Center(
          child: loading
              ? CircularProgressIndicator()
              : TextButton(
            onPressed: () async {
              Directory appDocDir =
              await getApplicationDocumentsDirectory();
              print('$appDocDir');

              String iosBookPath = '${appDocDir.path}/4.epub';
              print(iosBookPath);
              String androidBookPath = 'file:///android_asset/5.epub';
              EpubViewer.setConfig(
                  themeColor: Theme
                      .of(context)
                      .primaryColor,
                  identifier: "iosBook",
                  scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
                  allowSharing: true,
                  enableTts: true,
                  nightMode: false);
//                    EpubViewer.open(
//                      Platform.isAndroid ? androidBookPath : iosBookPath,
//                      lastLocation: EpubLocator.fromJson({
//                        "bookId": "2239",
//                        "href": "/OEBPS/ch06.xhtml",
//                        "created": 1539934158390,
//                        "locations": {
//                          "cfi": "epubcfi(/0!/4/4[simple_book]/2/2/6)"
//                        }
//                      }),
//                    );

              await EpubViewer.openAsset(
                'assets/4.epub',
                lastLocation: EpubLocator.fromJson({
                  "bookId": "2239",
                  "href": "/OEBPS/ch06.xhtml",
                  "created": 1539934158390,
                  "locations": {
                    "cfi": "epubcfi(/0!/4/4[simple_book]/2/2/6)"
                  }
                }),
              );
              // get current locator
              EpubViewer.locatorStream.listen((locator) {
                print(
                    'LOCATOR: ${EpubLocator.fromJson(jsonDecode(locator))}');
              });
            },
    child: Center(
    child: Column(
    children:<Widget>[
    Container(
    child: Text('PRACTICE AND PROCEDURE(PnP)',
    style: TextStyle(fontSize: 30),
    ),
    ),
      Container(
        padding: EdgeInsets.only(left: 20.0,right: 20.0, top: 30, bottom: 30),
        child: Icon(Icons.auto_stories,size: 200,),

        //  width: 300,
      ),

    ]
    ),
    ),
    )));
  }

  Future downloadFile() async {
    print('download1');
    //Map<PermissionGroup, PermissionStatus> permissions = await PermissionHandler().requestPermissions([PermissionGroup.storage]);


    // if (await Permission.storage.isGranted) {
    //   await Permission.storage.request();
    //   await startDownload();
    // } else {
    //   await startDownload();
    //  }
    //}

    startDownload() async {
      Directory appDocDir = Platform.isAndroid
          ? await getExternalStorageDirectory()
          : await getApplicationDocumentsDirectory();

      String path = appDocDir.path + '/chair.epub';
      File file = File(path);
//    await file.delete();

      if (!File(path).existsSync()) {
        await file.create();
        await dio.download(
          'https://github.com/FolioReader/FolioReaderKit/raw/master/Example/'
              'Shared/Sample%20eBooks/The%20Silver%20Chair.epub',
          path,
          deleteOnError: true,
          onReceiveProgress: (receivedBytes, totalBytes) {
            print((receivedBytes / totalBytes * 100).toStringAsFixed(0));
            //Check if download is complete and close the alert dialog
            if (receivedBytes == totalBytes) {
              loading = false;
              setState(() {});
            }
          },
        );
      } else {
        loading = false;
        setState(() {});
      }
    }
  }
}