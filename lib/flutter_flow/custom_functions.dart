import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

DocumentReference? convertIDToRef(String? test) {
  // the argument test is a string convert it into a referenced id of user then return it
  if (test == null) {
    return null;
  } else {
    return FirebaseFirestore.instance.collection('users').doc(test);
  }
}
