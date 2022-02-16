import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:epub_viewer/epub_viewer.dart';
import 'package:path_provider/path_provider.dart';
//void main() async {
 // runApp(MyApp());
//}

class Almanc extends StatefulWidget {
  @override
  _Almanc createState() => _Almanc();
}

class _Almanc extends State<Almanc> {
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
    return (
       Scaffold(
        appBar: AppBar(
          title: const Text('Reserved Date 2022'),
        ),
        body: Container(
          child: loading
              ? CircularProgressIndicator()
              : TextButton(
            onPressed: ()async {
              Directory appDocDir =
              await getApplicationDocumentsDirectory();
              print('$appDocDir');

              String iosBookPath = '${appDocDir.path}/dates2022.epub';
              print(iosBookPath);
              String androidBookPath = 'file:///android_asset/1.epub';
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
                'assets/dates2022.epub',
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
               child: Text('Reserved Date 2022',
               style: TextStyle(fontSize: 30),
             ),
             ),
               Container(
                 padding: EdgeInsets.only(left: 20.0,right: 20.0, top: 30, bottom: 30),
                 child: Image.asset(
                   "assets/almac.jpeg",
                   height: 400 ,
                   //  width: 300,
                 ),
               ),

            ]
            ),
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

      String path = appDocDir.path + '/dates.epub';
      File file = File(path);
//    await file.delete();

      if (!File(path).existsSync()) {
        await file.create();
        await dio.download(
          'https://github.com/FolioReader/FolioReaderKit/raw/master/Example/'
              'Shared/Sample%20eBooks/bluebook.epub',
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