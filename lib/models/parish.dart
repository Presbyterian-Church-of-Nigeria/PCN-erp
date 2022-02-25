
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
     this.address,
     this.minister,
     this.parish,
     //this.session_clerk,
     this.synod,
     this.town

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