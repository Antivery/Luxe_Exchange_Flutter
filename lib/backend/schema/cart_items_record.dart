import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cart_items_record.g.dart';

abstract class CartItemsRecord
    implements Built<CartItemsRecord, CartItemsRecordBuilder> {
  static Serializer<CartItemsRecord> get serializer =>
      _$cartItemsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'products_inCart')
  DocumentReference get productsInCart;

  @nullable
  int get price;

  @nullable
  int get quantity;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: 'item_store')
  DocumentReference get itemStore;

  @nullable
  String get storeStripeId;

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
  @BuiltValueField(wireName: 'payment_inet_id')
  String get paymentInitId;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CartItemsRecordBuilder builder) => builder
    ..price = 0
    ..quantity = 0
    ..storeStripeId = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..paymentInitId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cart_Items');

  static Stream<CartItemsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CartItemsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CartItemsRecord._();
  factory CartItemsRecord([void Function(CartItemsRecordBuilder) updates]) =
      _$CartItemsRecord;

  static CartItemsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCartItemsRecordData({
  DocumentReference productsInCart,
  int price,
  int quantity,
  DocumentReference user,
  DocumentReference itemStore,
  String storeStripeId,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String paymentInitId,
}) =>
    serializers.toFirestore(
        CartItemsRecord.serializer,
        CartItemsRecord((c) => c
          ..productsInCart = productsInCart
          ..price = price
          ..quantity = quantity
          ..user = user
          ..itemStore = itemStore
          ..storeStripeId = storeStripeId
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..paymentInitId = paymentInitId));
