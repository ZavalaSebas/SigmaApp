import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'recuperar_contra_widget.dart' show RecuperarContraWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RecuperarContraModel extends FlutterFlowModel<RecuperarContraWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtRecuperarPass widget.
  FocusNode? txtRecuperarPassFocusNode;
  TextEditingController? txtRecuperarPassController;
  String? Function(BuildContext, String?)? txtRecuperarPassControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtRecuperarPassFocusNode?.dispose();
    txtRecuperarPassController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
