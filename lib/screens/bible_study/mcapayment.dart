import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:pcn_erp/screens/bible_study/mca_bible_study.dart';
import 'package:pcn_erp/util/button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PaystackCard extends StatefulWidget {
  @override
  _PaystackCardState createState() => _PaystackCardState();
}

class _PaystackCardState extends State<PaystackCard> {
  String publicKeyTest =
      'pk_live_06994bfab880b4cebe0561662a624c0a2066dd04'; //pass in the public test key obtained from paystack dashboard here

  var _customerEmailController = TextEditingController();
  var _customerNameController = TextEditingController();

  final plugin = PaystackPlugin();
  bool _paymentMca = false;

  @override
  void initState() {
    //initialize the publicKey
    plugin.initialize(publicKey: publicKeyTest);
    super.initState();
    // Check if the payment has already been made

    _checkPaymentStatus1().then((paymentMca) {
      setState(() {
        _paymentMca = paymentMca;
      });
    });
  }

  Future<bool> _checkPaymentStatus1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool paymentMca = prefs.getBool('paymentMca') ?? false;
    return paymentMca;
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
          'Mcabible2023') //to pass extra parameters to be retrieved on the response from Paystack
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
        _paymentMca = true;
      });

      SharedPreferences.getInstance().then((prefs) {
        prefs.setBool('paymentMca', true);
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => McaBibleStudy()),
      );
    } else {
      //the payment wasn't successsful or the user cancelled the payment
      _showMessage('Payment Failed!!!');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_paymentMca) {
      return McaBibleStudy();
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "MCA Bible Study 2023 ",
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
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(221, 39, 38, 38).withOpacity(0.8),
                    ),
                    child: Column(
                      children: <Widget>[
                        // master card lik logo
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                //borderRadius: BorderRadius.circular(20),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                  'assets/cover1.jpg',
                                )))),
                        Text(
                          "Annual Subsriciption for MCA Bibile Study ₦100",
                          style: TextStyle(color: Colors.white),
                        )
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
                      hintText: 'Grace Peace',
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
                      labelText: 'Your Email',
                      hintText: 'youraddress@email.com',
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
