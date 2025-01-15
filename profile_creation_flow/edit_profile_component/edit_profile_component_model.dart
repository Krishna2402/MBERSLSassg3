import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_profile_component_widget.dart' show EditProfileComponentWidget;
import 'package:flutter/material.dart';

class EditProfileComponentModel
    extends FlutterFlowModel<EditProfileComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for matrixNo widget.
  FocusNode? matrixNoFocusNode;
  TextEditingController? matrixNoTextController;
  String? Function(BuildContext, String?)? matrixNoTextControllerValidator;
  // State field(s) for school widget.
  FocusNode? schoolFocusNode;
  TextEditingController? schoolTextController;
  String? Function(BuildContext, String?)? schoolTextControllerValidator;
  // State field(s) for inasis widget.
  FocusNode? inasisFocusNode;
  TextEditingController? inasisTextController;
  String? Function(BuildContext, String?)? inasisTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for role widget.
  String? roleValue;
  FormFieldController<String>? roleValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    matrixNoFocusNode?.dispose();
    matrixNoTextController?.dispose();

    schoolFocusNode?.dispose();
    schoolTextController?.dispose();

    inasisFocusNode?.dispose();
    inasisTextController?.dispose();
  }
}
