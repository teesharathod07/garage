import '/flutter_flow/flutter_flow_util.dart';
import 'health_insurance_widget.dart' show HealthInsuranceWidget;
import 'package:flutter/material.dart';

class HealthInsuranceModel extends FlutterFlowModel<HealthInsuranceWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
