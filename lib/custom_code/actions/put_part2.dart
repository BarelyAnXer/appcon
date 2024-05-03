// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Map<String, List<dynamic>> convertToMapOfLists(QandAStruct qandAStruct) {
  Map<String, List<dynamic>> qandAMap = {
    'question': qandAStruct.question,
    'remarks': qandAStruct.remarks,
    'yes_or_no': qandAStruct.yesOrNo.map((value) => value.toDouble()).toList(),
  };

  return qandAMap;
}

Future putPart2(String? bloodStocksId, QandAStruct? qandAStruct) async {
  Map<String, List<dynamic>> qandAMap = convertToMapOfLists(qandAStruct!);
  print(qandAMap);

  // Update the user's document in Firestore
  await FirebaseFirestore.instance
      .collection('BloodStocks')
      .doc(bloodStocksId)
      .update({'part2': qandAMap});
}
