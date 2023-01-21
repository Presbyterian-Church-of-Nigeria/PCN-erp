import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:vocsy_epub_viewer/epub_viewer.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class BibleStudy extends StatefulWidget {
  @override
  _BibleStudy createState() => _BibleStudy();
}

class _BibleStudy extends State<BibleStudy> {
  bool loading = false;
  Dio dio = new Dio();
  String filePath = "";

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.withOpacity(0.7),
        title: const Text('Bible Study 2023'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Builder(builder: (BuildContext context) {
          return loading
                    ? CircularProgressIndicator()
                    : TextButton(
                        onPressed: () async {
                          print("====filePath======$filePath");
                          //Directory appDocDir =
                          //await getApplicationDocumentsDirectory();
                          // print('$appDocDir');

                          // String iosBookPath = '${appDocDir.path}/2023.epub';
                          // print(iosBookPath);
                          //String androidBookPath = 'file:///android_asset/7.epub';
                          VocsyEpub.setConfig(
                              themeColor: Theme.of(context).primaryColor,
                              identifier: "iosBook",
                              scrollDirection:
                                  EpubScrollDirection.ALLDIRECTIONS,
                              allowSharing: true,
                              enableTts: true,
                              nightMode: true);
//

                          VocsyEpub.open(
                            filePath,
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
                          VocsyEpub.locatorStream.listen((locator) {
                            print(
                                'LOCATOR: ${EpubLocator.fromJson(jsonDecode(locator))}');
                          });
                        },
                        child: Center(
                          child: Column(children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 30),
                              child: Text(
                                'Pay to Dowload',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.deepPurple),
                              ),
                            ),
                            Container(
                                // padding: EdgeInsets.only(left: 20.0,right: 20.0, top: 30, bottom: 30),
                                height: 400,
                                width: 300,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(
                                        image: AssetImage("assets/cpver.jpg"),
                                        fit: BoxFit.fill,
                                        colorFilter: ColorFilter.mode(
                                            Colors.white.withOpacity(0.1),
                                            BlendMode.darken)

                                        //child: Icon(Icons.auto_stories,size: 200,),

                                        //  width: 300,
                                        ))),
                          ]),
                        ),
                      );
              })
        ),

    );
  }


  Future downloadFile() async {
    if (await Permission.storage.isGranted) {
      await Permission.storage.request();
      await startDownload();
    } else {
      await startDownload();
    }
  }

  startDownload() async {
    Directory appDocDir = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();

    String path = appDocDir.path + '/chair.epub';
    File file = File(path);

    if (!File(path).existsSync()) {
      await file.create();
      await dio.download(
        "http://rchapp.soparkids.org/ebook/2023.epub",
        path,
        deleteOnError: true,
        onReceiveProgress: (receivedBytes, totalBytes) {
          print((receivedBytes / totalBytes * 100).toStringAsFixed(0));
          setState(() {
            loading = true;
          });
        },
      ).whenComplete(() {
        setState(() {
          loading = false;
          filePath = path;
        });
      });
    } else {
      setState(() {
        loading = false;
        filePath = path;
      });
    }
  }
}
