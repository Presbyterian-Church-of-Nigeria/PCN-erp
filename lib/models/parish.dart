
//import 'dart:convert';

//import 'dart:io';
//import 'package:flutter/material.dart';

class Parish {
   String parish;
   String synod;
   String address;
   String minister;
   //String session_clerk;
   String town;

    Parish(

   {
     required this.address,
     required this.minister,
     required this.parish,
     //this.session_clerk,
      required this.synod,
      required this.town

    }
        );
    factory Parish.fromJson(Map<String, dynamic> json){
      return Parish(
      address: json['address'],
     parish: json['parish'],
    //session_clerk: json['session_clerk'],
    synod: json['synod'],
    minister: json['minister'],
   town: json['town'],


      );
   }
}