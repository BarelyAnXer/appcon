// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:speech_to_text/speech_to_text.dart';

Future speechToText() async {
  // a starting code for speech to text
// Create an instance of the SpeechToText class
  final speech = SpeechToText();

  // Check if the device supports speech recognition
  bool isAvailable = await speech.initialize(
    onStatus: (status) => print('Speech status: $status'),
    onError: (error) => print('Speech error: $error'),
  );

  if (isAvailable) {
    // Start listening for speech input
    speech.listen(
      onResult: (result) => print('Speech result: ${result.recognizedWords}'),
    );
  } else {
    print('Speech recognition not available');
  }
}
