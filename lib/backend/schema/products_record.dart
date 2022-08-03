import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'products_record.g.dart';

abstract class ProductsRecord
    implements Built<ProductsRecord, ProductsRecordBuilder> {
  static Serializer<ProductsRecord> get serializer =>
      _$productsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Product_name')
  String get productName;

  @nullable
  @BuiltValueField(wireName: 'product_Image')
  String get productImage;

  @nullable
  @BuiltValueField(wireName: 'product_Price')
  int get productPrice;

  @nullable
  @BuiltValueField(wireName: 'product_BrandName')
  String get productBrandName;

  @nullable
  @BuiltValueField(wireName: 'product_discription')
  String get productDiscription;

  @nullable
  @BuiltValueField(wireName: 'store_product')
  DocumentReference get storeProduct;

  @nullable
  @BuiltValueField(wireName: 'Store_product_Quantity')
  int get storeProductQuantity;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProductsRecordBuilder builder) => builder
    ..productName = ''
    ..productImage = ''
    ..productPrice = 0
    ..productBrandName = ''
    ..productDiscription = ''
    ..storeProductQuantity = 0
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProductsRecord._();
  factory ProductsRecord([void Function(ProductsRecordBuilder) updates]) =
      _$ProductsRecord;

  static ProductsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProductsRecordData({
  String productName,
  String productImage,
  int productPrice,
  String productBrandName,
  String productDiscription,
  DocumentReference storeProduct,
  int storeProductQuantity,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        ProductsRecord.serializer,
        ProductsRecord((p) => p
          ..productName = productName
          ..productImage = productImage
          ..productPrice = productPrice
          ..productBrandName = productBrandName
          ..productDiscription = productDiscription
          ..storeProduct = storeProduct
          ..storeProductQuantity = storeProductQuantity
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
