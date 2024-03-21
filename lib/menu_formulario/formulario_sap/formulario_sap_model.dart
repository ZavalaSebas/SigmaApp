import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/menu_formulario/bs_envio_correcto/bs_envio_correcto_widget.dart';
import 'formulario_sap_widget.dart' show FormularioSapWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FormularioSapModel extends FlutterFlowModel<FormularioSapWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoController;
  String? Function(BuildContext, String?)? txtTelefonoControllerValidator;
  // State field(s) for txtFecha widget.
  FocusNode? txtFechaFocusNode;
  TextEditingController? txtFechaController;
  String? Function(BuildContext, String?)? txtFechaControllerValidator;
  // State field(s) for txtProductor widget.
  FocusNode? txtProductorFocusNode;
  TextEditingController? txtProductorController;
  String? Function(BuildContext, String?)? txtProductorControllerValidator;
  // State field(s) for txtCedula widget.
  FocusNode? txtCedulaFocusNode;
  TextEditingController? txtCedulaController;
  String? Function(BuildContext, String?)? txtCedulaControllerValidator;
  // State field(s) for txtCodigo widget.
  FocusNode? txtCodigoFocusNode;
  TextEditingController? txtCodigoController;
  String? Function(BuildContext, String?)? txtCodigoControllerValidator;
  // State field(s) for txtTemperatura widget.
  FocusNode? txtTemperaturaFocusNode;
  TextEditingController? txtTemperaturaController;
  String? Function(BuildContext, String?)? txtTemperaturaControllerValidator;
  // State field(s) for txtCalibracion widget.
  FocusNode? txtCalibracionFocusNode;
  TextEditingController? txtCalibracionController;
  String? Function(BuildContext, String?)? txtCalibracionControllerValidator;
  // State field(s) for txtObservaciones widget.
  FocusNode? txtObservacionesFocusNode;
  TextEditingController? txtObservacionesController;
  String? Function(BuildContext, String?)? txtObservacionesControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtTelefonoFocusNode?.dispose();
    txtTelefonoController?.dispose();

    txtFechaFocusNode?.dispose();
    txtFechaController?.dispose();

    txtProductorFocusNode?.dispose();
    txtProductorController?.dispose();

    txtCedulaFocusNode?.dispose();
    txtCedulaController?.dispose();

    txtCodigoFocusNode?.dispose();
    txtCodigoController?.dispose();

    txtTemperaturaFocusNode?.dispose();
    txtTemperaturaController?.dispose();

    txtCalibracionFocusNode?.dispose();
    txtCalibracionController?.dispose();

    txtObservacionesFocusNode?.dispose();
    txtObservacionesController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
