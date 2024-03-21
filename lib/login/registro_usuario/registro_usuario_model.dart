import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/bs_registro_exitoso_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'registro_usuario_widget.dart' show RegistroUsuarioWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistroUsuarioModel extends FlutterFlowModel<RegistroUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNombreUsuario widget.
  FocusNode? txtNombreUsuarioFocusNode;
  TextEditingController? txtNombreUsuarioController;
  String? Function(BuildContext, String?)? txtNombreUsuarioControllerValidator;
  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoController;
  String? Function(BuildContext, String?)? txtCorreoControllerValidator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordControllerValidator;
  // State field(s) for txtVerficar widget.
  FocusNode? txtVerficarFocusNode;
  TextEditingController? txtVerficarController;
  late bool txtVerficarVisibility;
  String? Function(BuildContext, String?)? txtVerficarControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txtPasswordVisibility = false;
    txtVerficarVisibility = false;
  }

  @override
  void dispose() {
    txtNombreUsuarioFocusNode?.dispose();
    txtNombreUsuarioController?.dispose();

    txtCorreoFocusNode?.dispose();
    txtCorreoController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordController?.dispose();

    txtVerficarFocusNode?.dispose();
    txtVerficarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
