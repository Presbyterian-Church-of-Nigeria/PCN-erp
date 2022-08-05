// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SecondCard extends StatelessWidget {
  final String buttonImage;
  final String buttonTitle;
  final urlPage;

  SecondCard({
    this.buttonImage,
    this.buttonTitle,
    this.urlPage,
    //Icon child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              
              CircleAvatar(
                radius: 27,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(buttonImage),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  buttonTitle,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontFamily: 'Montserrat-Regular',
                  ),
                ),
              ),
            //InkWell(
              
              //  onTap: () => 
              
                //MaterialPageRoute(builder: (context) => )
              //),
          ],
          ),
        ),
      ),
    );
  }
}
