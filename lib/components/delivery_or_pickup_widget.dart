import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/check_out_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryOrPickupWidget extends StatefulWidget {
  const DeliveryOrPickupWidget({
    Key key,
    this.cartTotal,
  }) : super(key: key);

  final int cartTotal;

  @override
  _DeliveryOrPickupWidgetState createState() => _DeliveryOrPickupWidgetState();
}

class _DeliveryOrPickupWidgetState extends State<DeliveryOrPickupWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional(0.03, -0.56),
          child: FFButtonWidget(
            onPressed: () async {
              final usersUpdateData = createUsersRecordData(
                delivery: true,
              );
              await currentUserReference.update(usersUpdateData);
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.of(context).viewInsets,
                    child: CheckOutWidget(
                      method: () async {},
                    ),
                  );
                },
              );
            },
            text: 'Delivery',
            options: FFButtonOptions(
              width: 130,
              height: 40,
              color: FlutterFlowTheme.of(context).primaryColor,
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                  ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.03, 0.05),
          child: Text(
            'or',
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Montserrat',
                  fontSize: 40,
                ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.03, 0.66),
          child: FFButtonWidget(
            onPressed: () async {
              final usersUpdateData = createUsersRecordData(
                delivery: false,
              );
              await currentUserReference.update(usersUpdateData);
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.of(context).viewInsets,
                    child: CheckOutWidget(
                      method: () async {},
                    ),
                  );
                },
              );
            },
            text: 'Pick up',
            options: FFButtonOptions(
              width: 130,
              height: 40,
              color: FlutterFlowTheme.of(context).primaryColor,
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                  ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
