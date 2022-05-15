
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:pcn_erp/models/parish.dart';

class Parish {
  
  FirebaseFirestore _instance;
  List<Parish> _parishes =[];
  List<Parish> getParish(){
    return _parishes;
  }
  
  Future<void> getParishCollectionFromFirebase() async{
    _instance = FirebaseFirestore.instance;
    CollectionReference parishes = _instance.collection('parish');

    DocumentSnapshot snapshot = await parishes.doc('parishes').get();
    if (snapshot.exists){
      //Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
      //var parishesData = data['parishes'] as List<dynamic>;
      //parishesData.forEach((parData) {
        //Parish cat = Parish.fromJson(parData);
       // _parishes.add(cat);

      }
    }

  }
