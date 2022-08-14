import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/stripe/payment_manager.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPageWidget extends StatefulWidget {
  const CartPageWidget({
    Key key,
    this.storeStripeID,
    this.cardNumber,
  }) : super(key: key);

  final String storeStripeID;
  final String cardNumber;

  @override
  _CartPageWidgetState createState() => _CartPageWidgetState();
}

class _CartPageWidgetState extends State<CartPageWidget> {
  String paymentId;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF007A),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          buttonSize: 46,
          fillColor: Color(0x00FFFFFF),
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 24,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'My Cart',
          style: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF1F5F8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              StreamBuilder<List<CartItemsRecord>>(
                stream: queryCartItemsRecord(
                  queryBuilder: (cartItemsRecord) => cartItemsRecord
                      .where('user', isEqualTo: currentUserReference),
                  singleRecord: true,
                ),
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
                  List<CartItemsRecord> containerCartItemsRecordList =
                      snapshot.data;
                  // Return an empty Container when the document does not exist.
                  if (snapshot.data.isEmpty) {
                    return Container();
                  }
                  final containerCartItemsRecord =
                      containerCartItemsRecordList.isNotEmpty
                          ? containerCartItemsRecordList.first
                          : null;
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Color(0x4814181B),
                          offset: Offset(0, 1),
                        )
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order Total',
                            style:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                          Text(
                            '\$25.00',
                            textAlign: TextAlign.end,
                            style:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF151B1E),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(1, 10, 1, 0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StreamBuilder<List<CartItemsRecord>>(
                        stream: queryCartItemsRecord(
                          queryBuilder: (cartItemsRecord) => cartItemsRecord
                              .where('user', isEqualTo: currentUserReference),
                        ),
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
                          List<CartItemsRecord> columnCartItemsRecordList =
                              snapshot.data;
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children:
                                List.generate(columnCartItemsRecordList.length,
                                    (columnIndex) {
                              final columnCartItemsRecord =
                                  columnCartItemsRecordList[columnIndex];
                              return Container(
                                width: MediaQuery.of(context).size.width * 0.96,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x3A000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 0,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 0, 0, 0),
                                          child: StreamBuilder<ProductsRecord>(
                                            stream: ProductsRecord.getDocument(
                                                columnCartItemsRecord
                                                    .productsInCart),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              final productImageProductsRecord =
                                                  snapshot.data;
                                              return ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.network(
                                                  productImageProductsRecord
                                                      .productImage,
                                                  width: 74,
                                                  height: 74,
                                                  fit: BoxFit.cover,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                StreamBuilder<ProductsRecord>(
                                                  stream: ProductsRecord
                                                      .getDocument(
                                                          columnCartItemsRecord
                                                              .productsInCart),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    final productNameProductsRecord =
                                                        snapshot.data;
                                                    return Text(
                                                      productNameProductsRecord
                                                          .productName,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle1
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: Color(
                                                                    0xFF111417),
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    );
                                                  },
                                                ),
                                                Expanded(
                                                  child: InkWell(
                                                    onTap: () async {
                                                      await columnCartItemsRecord
                                                          .reference
                                                          .delete();
                                                    },
                                                    child: Icon(
                                                      Icons.delete,
                                                      color: Color(0xFFFF007A),
                                                      size: 24,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 8, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30,
                                                    buttonSize: 46,
                                                    icon: FaIcon(
                                                      FontAwesomeIcons.minus,
                                                      color: Color(0xFF95A1AC),
                                                      size: 16,
                                                    ),
                                                    onPressed: () async {
                                                      if (columnCartItemsRecord
                                                              .quantity >
                                                          0) {
                                                        final cartItemsUpdateData =
                                                            {
                                                          'quantity': FieldValue
                                                              .increment(-1),
                                                        };
                                                        await columnCartItemsRecord
                                                            .reference
                                                            .update(
                                                                cartItemsUpdateData);
                                                      }
                                                    },
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                4, 0, 4, 0),
                                                    child: Container(
                                                      width: 40,
                                                      height: 34,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Colors.transparent,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFFDBE2E7),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 4,
                                                                    12, 0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            columnCartItemsRecord
                                                                .quantity
                                                                ?.toString(),
                                                            '1',
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .subtitle1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF111417),
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30,
                                                    buttonSize: 46,
                                                    icon: FaIcon(
                                                      FontAwesomeIcons.plus,
                                                      color: Color(0xFFFF007A),
                                                      size: 16,
                                                    ),
                                                    onPressed: () async {
                                                      final cartItemsUpdateData =
                                                          {
                                                        'quantity': FieldValue
                                                            .increment(1),
                                                      };
                                                      await columnCartItemsRecord
                                                          .reference
                                                          .update(
                                                              cartItemsUpdateData);
                                                    },
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 16, 0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            formatNumber(
                                                              columnCartItemsRecord
                                                                  .price,
                                                              formatType:
                                                                  FormatType
                                                                      .decimal,
                                                              decimalType:
                                                                  DecimalType
                                                                      .automatic,
                                                              currency: '\$',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .subtitle1
                                                                .override(
                                                                  fontFamily:
                                                                      'Lato',
                                                                  color: Color(
                                                                      0xFF151B1E),
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.96,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x3A000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 16, 16, 12),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Order Summary',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF090F13),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 0, 16, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Subtotal',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF8B97A2),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    StreamBuilder<List<CartItemsRecord>>(
                                      stream: queryCartItemsRecord(
                                        queryBuilder: (cartItemsRecord) =>
                                            cartItemsRecord.where('user',
                                                isEqualTo:
                                                    currentUserReference),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                            ),
                                          );
                                        }
                                        List<CartItemsRecord>
                                            textCartItemsRecordList =
                                            snapshot.data;
                                        return Text(
                                          '[Price]',
                                          textAlign: TextAlign.end,
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Lato',
                                                color: Color(0xFF111417),
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 0, 16, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Tax',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF8B97A2),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    Text(
                                      '[Price]',
                                      textAlign: TextAlign.end,
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Lato',
                                            color: Color(0xFF111417),
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              if (valueOrDefault<bool>(
                                  currentUserDocument?.delivery, false))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 16, 12),
                                  child: AuthUserStreamWidget(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Delivery',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color: Color(0xFF8B97A2),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          '[Price]',
                                          textAlign: TextAlign.end,
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Lato',
                                                color: Color(0xFF111417),
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 12, 16, 16),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF8B97A2),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    StreamBuilder<List<CartItemsRecord>>(
                                      stream: queryCartItemsRecord(
                                        queryBuilder: (cartItemsRecord) =>
                                            cartItemsRecord.where('user',
                                                isEqualTo:
                                                    currentUserReference),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                            ),
                                          );
                                        }
                                        List<CartItemsRecord>
                                            orderPriceCartItemsRecordList =
                                            snapshot.data;
                                        return Text(
                                          functions
                                              .getRunningTotal(
                                                  orderPriceCartItemsRecordList
                                                      .toList(),
                                                  orderPriceCartItemsRecordList
                                                      .length)
                                              .toString(),
                                          textAlign: TextAlign.end,
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Lato',
                                                color: Color(0xFF151B1E),
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 2,
                        thickness: 1,
                        indent: 16,
                        endIndent: 16,
                        color: Colors.transparent,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/applePay.png',
                                width: 160,
                                height: 44,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/payPal.png',
                              width: 160,
                              height: 44,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      StreamBuilder<List<CartItemsRecord>>(
                        stream: queryCartItemsRecord(
                          queryBuilder: (cartItemsRecord) => cartItemsRecord
                              .where('user', isEqualTo: currentUserReference),
                          singleRecord: true,
                        ),
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
                          List<CartItemsRecord> containerCartItemsRecordList =
                              snapshot.data;
                          final containerCartItemsRecord =
                              containerCartItemsRecordList.isNotEmpty
                                  ? containerCartItemsRecordList.first
                                  : null;
                          return Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    final response =
                                        await StripeInitPaymentCall.call(
                                            amount: functions
                                                .productTotal(
                                                    containerCartItemsRecord
                                                        .quantity,
                                                    containerCartItemsRecord
                                                        .price)
                                                .toInt(),
                                            currency: 'usd',
                                            onBehalfOf: 'acct_1KgwFLHH13TNKKuc',
                                            description: 'test',
                                            custStripId: currentUserDocument
                                                .stripeCustID);
                                    print(response.statusCode);
                                    print(response.jsonBody);
                                    if (response.statusCode == 200) {
                                      SnackBar(content: Text(''));
                                    }

                                    final ordersCreateData = {
                                      ...createOrdersRecordData(
                                        userOrder:
                                            containerCartItemsRecord.user,
                                        orderTotal: functions.productTotal(
                                            containerCartItemsRecord.quantity,
                                            containerCartItemsRecord.price),
                                        storeOrderdFrom:
                                            containerCartItemsRecord.itemStore,
                                      ),
                                      'Order_Items': [
                                        containerCartItemsRecord.productsInCart
                                      ],
                                    };
                                    await OrdersRecord.collection
                                        .doc()
                                        .set(ordersCreateData);

                                    setState(() {});
                                  },
                                  text: 'Proceed to Checkout',
                                  options: FFButtonOptions(
                                    width: 320,
                                    height: 60,
                                    color: Color(0xFF03CE9F),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    elevation: 3,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
