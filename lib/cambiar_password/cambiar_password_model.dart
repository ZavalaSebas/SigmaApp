import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cambiar_password_widget.dart' show CambiarPasswordWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CambiarPasswordModel extends FlutterFlowModel<CambiarPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtpaasActual widget.
  FocusNode? txtpaasActualFocusNode;
  TextEditingController? txtpaasActualController;
  String? Function(BuildContext, String?)? txtpaasActualControllerValidator;
  // State field(s) for txtpassNuevo widget.
  FocusNode? txtpassNuevoFocusNode;
  TextEditingController? txtpassNuevoController;
  String? Function(BuildContext, String?)? txtpassNuevoControllerValidator;
  // State field(s) for txtConfirmarPass widget.
  FocusNode? txtConfirmarPassFocusNode;
  TextEditingController? txtConfirmarPassController;
  String? Function(BuildContext, String?)? txtConfirmarPassControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtpaasActualFocusNode?.dispose();
    txtpaasActualController?.dispose();

    txtpassNuevoFocusNode?.dispose();
    txtpassNuevoController?.dispose();

    txtConfirmarPassFocusNode?.dispose();
    txtConfirmarPassController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
