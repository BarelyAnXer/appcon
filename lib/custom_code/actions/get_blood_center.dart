// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String?> getBloodCenter(String? stringID) async {
  print(
      "Provided stringID: $stringID"); // Debug print to check the provided stringID
  DocumentSnapshot docSnapshot = await FirebaseFirestore.instance
      .collection('users')
      .doc(stringID) // Retrieve document directly using the provided stringID
      .get();
  if (!docSnapshot.exists) {
    return "DEBUG"; // Return null if no document matches the provided ID
  }
  Map<String, dynamic> userData = docSnapshot.data() as Map<String, dynamic>;
  String companyName = userData['company_name'];
  print(companyName);
  return companyName;
}
