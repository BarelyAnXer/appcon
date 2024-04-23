// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_tts/flutter_tts.dart';

Future textToSpeech(BuildContext context) async {
  // Add your function code here!
  final FlutterTts _flutterTts = FlutterTts();

  _flutterTts.setProgressHandler((text, start, end, word) {
    // setState(() {
    //   _currentWordStart = start;
    //   _currentWordEnd = end;
    // });
  });
  _flutterTts.setVoice({"name": 'en-us-x-tpf-local', "locale": 'en-US'});
  _flutterTts.setSpeechRate(0.5);

  _flutterTts.speak("putangina");
}
