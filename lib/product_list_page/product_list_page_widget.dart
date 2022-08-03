import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductListPageWidget extends StatefulWidget {
  const ProductListPageWidget({
    Key key,
    this.storeRef,
    this.storeStripeId,
  }) : super(key: key);

  final DocumentReference storeRef;
  final String storeStripeId;

  @override
  _ProductListPageWidgetState createState() => _ProductListPageWidgetState();
}

class _ProductListPageWidgetState extends State<ProductListPageWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.shopping_cart_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              context.pushNamed('Cart_Page');
            },
          ),
        ],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: AlignmentDirectional(0, -1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        shape: BoxShape.rectangle,
                      ),
                      child: TextFormField(
                        controller: textController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: '[Some hint text...]',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: StreamBuilder<List<ProductsRecord>>(
                  stream: queryProductsRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }
                    List<ProductsRecord> gridViewProductsRecordList =
                        snapshot.data;
                    return GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1,
                      ),
                      scrollDirection: Axis.vertical,
                      itemCount: gridViewProductsRecordList.length,
                      itemBuilder: (context, gridViewIndex) {
                        final gridViewProductsRecord =
                            gridViewProductsRecordList[gridViewIndex];
                        return InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'product_infoPage',
                              queryParams: {
                                'productName': serializeParam(
                                    gridViewProductsRecord.productName,
                                    ParamType.String),
                                'productDiscription': serializeParam(
                                    gridViewProductsRecord.productDiscription,
                                    ParamType.String),
                                'productPrice': serializeParam(
                                    gridViewProductsRecord.productPrice,
                                    ParamType.int),
                                'productImage': serializeParam(
                                    gridViewProductsRecord.productImage,
                                    ParamType.String),
                                'productRef': serializeParam(
                                    gridViewProductsRecord.reference,
                                    ParamType.DocumentReference),
                                'storeStripeID': serializeParam(
                                    widget.storeStripeId, ParamType.String),
                                'productStoreRef': serializeParam(
                                    gridViewProductsRecord.storeProduct,
                                    ParamType.DocumentReference),
                              }.withoutNulls,
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                onTap: () async {
                                  context.pushNamed(
                                    'product_infoPage',
                                    queryParams: {
                                      'productName': serializeParam(
                                          gridViewProductsRecord.productName,
                                          ParamType.String),
                                      'productDiscription': serializeParam(
                                          gridViewProductsRecord
                                              .productDiscription,
                                          ParamType.String),
                                      'productPrice': serializeParam(
                                          gridViewProductsRecord.productPrice,
                                          ParamType.int),
                                      'productImage': serializeParam(
                                          gridViewProductsRecord.productImage,
                                          ParamType.String),
                                      'productRef': serializeParam(
                                          gridViewProductsRecord.reference,
                                          ParamType.DocumentReference),
                                      'storeStripeID': serializeParam(
                                          widget.storeStripeId,
                                          ParamType.String),
                                      'productStoreRef': serializeParam(
                                          gridViewProductsRecord.storeProduct,
                                          ParamType.DocumentReference),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Image.asset(
                                        'assets/images/pexels-scandinavian-biolabs-8478802.jpg',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Text(
                                        gridViewProductsRecord.productName,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                      Text(
                                        gridViewProductsRecord.productPrice
                                            .toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
