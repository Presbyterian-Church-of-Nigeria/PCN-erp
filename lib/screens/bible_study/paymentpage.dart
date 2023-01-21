import 'package:flutter/material.dart';
import 'package:pcn_erp/screens/bible_study/bible_study.dart';
import 'package:webview_flutter/webview_flutter.dart';


class PayUser extends StatefulWidget {
  const PayUser({Key key}) : super(key: key);

  @override
  State<PayUser> createState() => _PayUserState();
}

class _PayUserState extends State<PayUser> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.withOpacity(0.7),
        title: Text("Payment Page"),
      ),

      body: WebView(

          javascriptMode: JavascriptMode.unrestricted,
          javascriptChannels: <JavascriptChannel>[
            JavascriptChannel(
              name: 'paymentComplete',
              onMessageReceived: (JavascriptMessage message) {
                // Handle the message received from the webview
                if (message.message == 'paymentSuccess') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BibleStudy()),
                  );
                }
              },
            ),
          ].toSet(),
          initialUrl: 'https://paystack.com/pay/biblestudy2022',
        )



       // javascriptMode: JavascriptMode.unrestricted,

       // userAgent: 'Flutter;Webview',


       // javascriptChannels: <JavascriptChannel>{
       //   _toasterJavascriptChannel(context)
      //  },

       // onPageStarted: (String url) {
     // if (url.endsWith("bible-study")) {
       /// Navigator.push(
       //   context,
       //   MaterialPageRoute(builder: (context) => BibleStudy()),
       // );
      //}
    //},






    //  ),

    );

  }

  }

  //JavascriptChannel _toasterJavascriptChannel(BuildContext context){
    //return JavascriptChannel(
      //  name: 'Toaster',
        //onMessageReceived: (JavascriptMessage message) {
          //ScaffoldMessenger.of(context).showSnackBar(
            //SnackBar(content: Text(message.message)),
         // );
        //});
  //}






