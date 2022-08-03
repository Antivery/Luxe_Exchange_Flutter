import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductInfoPageWidget extends StatefulWidget {
  const ProductInfoPageWidget({
    Key key,
    this.productName,
    this.productDiscription,
    this.productPrice,
    this.productImage,
    this.productRef,
    this.cartItems,
    this.storeStripeID,
    this.productStoreRef,
  }) : super(key: key);

  final String productName;
  final String productDiscription;
  final int productPrice;
  final String productImage;
  final DocumentReference productRef;
  final CartItemsRecord cartItems;
  final String storeStripeID;
  final DocumentReference productStoreRef;

  @override
  _ProductInfoPageWidgetState createState() => _ProductInfoPageWidgetState();
}

class _ProductInfoPageWidgetState extends State<ProductInfoPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF007A),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: Colors.white,
            size: 24,
          ),
        ),
        title: Text(
          ' ',
          style: FlutterFlowTheme.of(context).subtitle2.override(
                fontFamily: 'Lexend Deca',
                color: Color(0xFF151B1E),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              buttonSize: 48,
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () async {
                context.pushNamed('Cart_Page');
              },
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.network(
                              widget.productImage,
                              width: MediaQuery.of(context).size.width,
                              height: 350,
                              fit: BoxFit.fitHeight,
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                widget.productName,
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF090F13),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Expanded(
                                child: Text(
                                  formatNumber(
                                    widget.productPrice,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.automatic,
                                    currency: '\$',
                                  ),
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Lato',
                                        color: Color(0xFFFF007A),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: Text(
                                    widget.productDiscription,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0xFF8B97A2),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  buttonSize: 46,
                                  icon: FaIcon(
                                    FontAwesomeIcons.minus,
                                    color: Color(0xFF8B97A2),
                                    size: 20,
                                  ),
                                  onPressed: () async {
                                    if (FFAppState().ProductQuantitySelection >
                                        0) {
                                      setState(() => FFAppState()
                                              .ProductQuantitySelection =
                                          FFAppState()
                                                  .ProductQuantitySelection +
                                              -1);
                                    }
                                  },
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                alignment:
                                    AlignmentDirectional(0, 0.1499999999999999),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0.05),
                                  child: StreamBuilder<List<ProductsRecord>>(
                                    stream: queryProductsRecord(
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
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<ProductsRecord>
                                          textProductsRecordList =
                                          snapshot.data;
                                      // Return an empty Container when the document does not exist.
                                      if (snapshot.data.isEmpty) {
                                        return Container();
                                      }
                                      final textProductsRecord =
                                          textProductsRecordList.isNotEmpty
                                              ? textProductsRecordList.first
                                              : null;
                                      return AutoSizeText(
                                        FFAppState()
                                            .ProductQuantitySelection
                                            .toString(),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .title1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF090F13),
                                              fontSize: 32,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(
                                    color: Color(0xFFDBE2E7),
                                    width: 2,
                                  ),
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  buttonSize: 48,
                                  icon: Icon(
                                    Icons.add,
                                    color: Color(0xFF8B97A2),
                                    size: 30,
                                  ),
                                  onPressed: () async {
                                    setState(() => FFAppState()
                                            .ProductQuantitySelection =
                                        FFAppState().ProductQuantitySelection +
                                            1);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                              child: StreamBuilder<List<CartItemsRecord>>(
                                stream: queryCartItemsRecord(
                                  queryBuilder: (cartItemsRecord) =>
                                      cartItemsRecord.where('user',
                                          isEqualTo: currentUserReference),
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
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                      ),
                                    );
                                  }
                                  List<CartItemsRecord>
                                      buttonCartItemsRecordList = snapshot.data;
                                  final buttonCartItemsRecord =
                                      buttonCartItemsRecordList.isNotEmpty
                                          ? buttonCartItemsRecordList.first
                                          : null;
                                  return FFButtonWidget(
                                    onPressed: () async {
                                      if (buttonCartItemsRecord != null) {
                                        if (widget.productRef ==
                                            buttonCartItemsRecord
                                                .productsInCart) {
                                          final cartItemsUpdateData = {
                                            'quantity': FieldValue.increment(
                                                FFAppState()
                                                    .ProductQuantitySelection),
                                          };
                                          await buttonCartItemsRecord.reference
                                              .update(cartItemsUpdateData);
                                        }
                                      } else {
                                        final cartItemsCreateData =
                                            createCartItemsRecordData(
                                          productsInCart: widget.productRef,
                                          price: widget.productPrice,
                                          quantity: FFAppState()
                                              .ProductQuantitySelection,
                                          user: currentUserReference,
                                          storeStripeId: widget.storeStripeID,
                                          itemStore:
                                              buttonCartItemsRecord.itemStore,
                                        );
                                        await CartItemsRecord.collection
                                            .doc()
                                            .set(cartItemsCreateData);
                                      }

                                      if (buttonCartItemsRecord.itemStore !=
                                          buttonCartItemsRecord.itemStore) {
                                        await buttonCartItemsRecord.reference
                                            .delete();

                                        final cartItemsCreateData =
                                            createCartItemsRecordData(
                                          productsInCart: widget.productRef,
                                          price: widget.productPrice,
                                          quantity: FFAppState()
                                              .ProductQuantitySelection,
                                          user: currentUserReference,
                                          itemStore: widget.productStoreRef,
                                          storeStripeId: widget.storeStripeID,
                                        );
                                        await CartItemsRecord.collection
                                            .doc()
                                            .set(cartItemsCreateData);
                                      }
                                    },
                                    text: 'Add to Cart',
                                    options: FFButtonOptions(
                                      color: Color(0xFFFF007A),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
