import '/flutter_flow/flutter_flow_util.dart';
import 'my_information_page_widget.dart' show MyInformationPageWidget;
import 'package:flutter/material.dart';

class MyInformationPageModel extends FlutterFlowModel<MyInformationPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
