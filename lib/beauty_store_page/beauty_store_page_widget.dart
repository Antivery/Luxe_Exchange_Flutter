import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class BeautyStorePageWidget extends StatefulWidget {
  const BeautyStorePageWidget({
    Key key,
    this.storeName,
    this.storeRating,
    this.storeDiscription,
    this.storePhoneNumber,
    this.storeProducts,
    this.storeAddress,
    this.storeStripID,
    this.storeProduct,
    this.storeImage,
  }) : super(key: key);

  final String storeName;
  final int storeRating;
  final String storeDiscription;
  final String storePhoneNumber;
  final DocumentReference storeProducts;
  final String storeAddress;
  final String storeStripID;
  final DocumentReference storeProduct;
  final String storeImage;

  @override
  _BeautyStorePageWidgetState createState() => _BeautyStorePageWidgetState();
}

class _BeautyStorePageWidgetState extends State<BeautyStorePageWidget> {
  double ratingBarValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.03, -0.72),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.asset(
                          'assets/images/pexels-delbeautybox-705255.jpg',
                          width: double.infinity,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.9, -0.74),
                      child: InkWell(
                        onTap: () async {
                          context.pop();
                        },
                        child: Icon(
                          Icons.chevron_left,
                          color: Colors.black,
                          size: 35,
                        ),
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
                    valueOrDefault<String>(
                      widget.storeName,
                      'Store Name',
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Montserrat',
                          fontSize: 24,
                          lineHeight: 2,
                        ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, -1),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.45, 0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.storeAddress,
                          'Store Address',
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              lineHeight: 5,
                            ),
                      ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.storePhoneNumber,
                        '000-000-0000',
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            lineHeight: 5,
                          ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.63, -0.14),
                    child: RatingBar.builder(
                      onRatingUpdate: (newValue) =>
                          setState(() => ratingBarValue = newValue),
                      itemBuilder: (context, index) => Icon(
                        Icons.star_rounded,
                        color: Color(0xFFFF007A),
                      ),
                      direction: Axis.horizontal,
                      initialRating: ratingBarValue ??=
                          widget.storeRating.toDouble(),
                      unratedColor: Color(0xFFE3B3D1),
                      itemCount: 5,
                      itemSize: 20,
                      glowColor: Color(0xFFFF007A),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.storeDiscription,
                      'Beauty Store',
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Montserrat',
                          lineHeight: 4,
                        ),
                  ),
                ],
              ),
              Divider(
                height: 40,
                thickness: 3,
                indent: 40,
                endIndent: 40,
                color: Color(0xFFF60494),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'All Products',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              fontSize: 30,
                              lineHeight: 3,
                            ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.navigate_next_rounded,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            'Product_List_page',
                            queryParams: {
                              'storeRef': serializeParam(widget.storeProduct,
                                  ParamType.DocumentReference),
                              'storeStripeId': serializeParam(
                                  widget.storeStripID, ParamType.String),
                            }.withoutNulls,
                          );
                        },
                      ),
                    ],
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                      child: StreamBuilder<ProductsRecord>(
                        stream:
                            ProductsRecord.getDocument(widget.storeProducts),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            );
                          }
                          final listViewProductsRecord = snapshot.data;
                          return ListView(
                            padding: EdgeInsets.zero,
                            primary: false,
                            scrollDirection: Axis.horizontal,
                            children: [
                              InkWell(
                                onTap: () async {
                                  context.pushNamed(
                                    'product_infoPage',
                                    queryParams: {
                                      'productName': serializeParam(
                                          listViewProductsRecord.productName,
                                          ParamType.String),
                                      'productDiscription': serializeParam(
                                          listViewProductsRecord
                                              .productDiscription,
                                          ParamType.String),
                                      'productPrice': serializeParam(
                                          listViewProductsRecord.productPrice,
                                          ParamType.int),
                                      'productImage': serializeParam(
                                          listViewProductsRecord.productImage,
                                          ParamType.String),
                                      'productRef': serializeParam(
                                          listViewProductsRecord.reference,
                                          ParamType.DocumentReference),
                                      'storeStripeID': serializeParam(
                                          widget.storeStripID,
                                          ParamType.String),
                                      'productStoreRef': serializeParam(
                                          listViewProductsRecord.storeProduct,
                                          ParamType.DocumentReference),
                                    }.withoutNulls,
                                  );
                                },
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Image.asset(
                                        'assets/images/pexels---9909784.jpg',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              listViewProductsRecord
                                                  .productName,
                                              'Product name',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            listViewProductsRecord.productPrice
                                                .toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
