// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> provinceCodeToProvinceName(String? provinceCode) async {
  var url = 'https://psgc.cloud/api/provinces/${provinceCode}';
  var response = await http.get(Uri.parse(url));

  print(response); // Debug print

  if (response.statusCode == 200) {
    var jsonResponse = json.decode(response.body);
    print(jsonResponse); // Debug print
    return jsonResponse.name;
    // return jsonResponse.toString(); // Convert to string
  } else {
    print(response.reasonPhrase); // Debug print
    return 'Error: ${response.statusCode} ${response.reasonPhrase}';
  }
}
