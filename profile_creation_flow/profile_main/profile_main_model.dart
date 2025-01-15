import '/flutter_flow/flutter_flow_util.dart';
import 'profile_main_widget.dart' show ProfileMainWidget;
import 'package:flutter/material.dart';

class ProfileMainModel extends FlutterFlowModel<ProfileMainWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
