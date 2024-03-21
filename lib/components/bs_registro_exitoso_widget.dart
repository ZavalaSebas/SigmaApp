import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bs_registro_exitoso_model.dart';
export 'bs_registro_exitoso_model.dart';

class BsRegistroExitosoWidget extends StatefulWidget {
  const BsRegistroExitosoWidget({super.key});

  @override
  State<BsRegistroExitosoWidget> createState() =>
      _BsRegistroExitosoWidgetState();
}

class _BsRegistroExitosoWidgetState extends State<BsRegistroExitosoWidget> {
  late BsRegistroExitosoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BsRegistroExitosoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 270.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(0.0, -3.0),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle_outlined,
                  color: Color(0xFFA5DC86),
                  size: 70.0,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Exito',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Playfair Display',
                          color: FlutterFlowTheme.of(context).accent1,
                          fontSize: 28.0,
                        ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Registro finalizado. \nProceda a iniciar sesion.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Playfair Display',
                        color: FlutterFlowTheme.of(context).accent1,
                        fontSize: 28.0,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
