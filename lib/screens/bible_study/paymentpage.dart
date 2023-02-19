import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:pcn_erp/screens/bible_study/bible_study.dart';
import 'package:pcn_erp/util/button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PaystackCardMethod extends StatefulWidget {
  @override
  _PaystackCardMethodState createState() => _PaystackCardMethodState();
}

class _PaystackCardMethodState extends State<PaystackCardMethod> {
  String publicKeyTest =
      'pk_live_06994bfab880b4cebe0561662a624c0a2066dd04';         //pass in the public test key obtained from paystack dashboard here

  var _customerEmailController = TextEditingController();
  var _customerNameController = TextEditingController();

  final plugin = PaystackPlugin();
          bool _paymentMade = false;


  @override
  void initState() {
    //initialize the publicKey
    plugin.initialize(publicKey: publicKeyTest);
    super.initState();
     // Check if the payment has already been made
   
  _checkPaymentStatus().then((paymentMade) {
      setState(() {
        _paymentMade = paymentMade;
      });
    });
  }

  Future<bool> _checkPaymentStatus() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
  bool paymentMade = prefs.getBool('paymentMade') ?? false;
  return paymentMade;
  }



  //a method to show the message
  void _showMessage(String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  //used to generate a unique reference for payment
  String _getReference() {
    var platform = (Platform.isIOS) ? 'iOS' : 'Android';
    final thisDate = DateTime.now().millisecondsSinceEpoch;
    return 'ChargedFrom${platform}_$thisDate';
  }

  //async method to charge users card and return a response
  chargeCard() async {
    var charge = Charge()
      ..amount = 100 *
          100 //the money should be in kobo hence the need to multiply the value by 100
      ..reference = _getReference()
      ..putCustomField('custom_id',
          'Biblestudy2023') //to pass extra parameters to be retrieved on the response from Paystack
      ..email = _customerEmailController.text
      ..name = _customerNameController.text;

    CheckoutResponse response = await plugin.checkout(
      context,
      method: CheckoutMethod.card,
      charge: charge,
    );

    //check if the response is true or not
    if (response.status == true) {
      _showMessage('Payment was successful!!!');
       setState(() {
      _paymentMade = true;
    });
      
  SharedPreferences.getInstance().then((prefs) {
    prefs.setBool('paymentMade', true);
  });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BibleStudy()),
    );
      
      
    } else {
      //the payment wasn't successsful or the user cancelled the payment
      _showMessage('Payment Failed!!!');
    }
  }

  @override
  Widget build(BuildContext context) {
        if (_paymentMade) {
      return BibleStudy();
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Bible Study 2023",
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(221, 39, 38, 38).withOpacity(0.8),
                    ),
                    child: Column(
                      children: <Widget>[
                        // master card like logo
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                //borderRadius: BorderRadius.circular(20),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                  'assets/cpver.jpg',
                                )))
                                ),
                             Text(
                          "Annual Subsriciption for Bibile Study ₦100",
                             style: TextStyle(color: Colors.white),)

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    controller: _customerNameController,
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      hintText: 'Victor Ken',
                      hintStyle: TextStyle(fontSize: 14),
                      labelStyle: TextStyle(fontSize: 14),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _customerEmailController,
                    decoration: InputDecoration(
                      labelText: 'Yours Email',
                      hintText: 'youremail@mail.com',
                      hintStyle: TextStyle(fontSize: 14),
                      labelStyle: TextStyle(fontSize: 14),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          padding: const EdgeInsets.all(15),
                          child: PayButton(
                            //call the chargeCard method
                            callback: () => chargeCard(),
                          ),
                        ),
                      )),
                ]))));
  }
}
