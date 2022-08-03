import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'orders_record.g.dart';

abstract class OrdersRecord
    implements Built<OrdersRecord, OrdersRecordBuilder> {
  static Serializer<OrdersRecord> get serializer => _$ordersRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'user_Order')
  DocumentReference get userOrder;

  @nullable
  @BuiltValueField(wireName: 'driver_ForOrder')
  DocumentReference get driverForOrder;

  @nullable
  @BuiltValueField(wireName: 'PickedUp_ByDriver')
  bool get pickedUpByDriver;

  @nullable
  @BuiltValueField(wireName: 'Order_total')
  int get orderTotal;

  @nullable
  @BuiltValueField(wireName: 'storeOrderd_from')
  DocumentReference get storeOrderdFrom;

  @nullable
  @BuiltValueField(wireName: 'delivery_fee')
  int get deliveryFee;

  @nullable
  @BuiltValueField(wireName: 'time_pickedUp')
  DateTime get timePickedUp;

  @nullable
  @BuiltValueField(wireName: 'time_delivered')
  DateTime get timeDelivered;

  @nullable
  @BuiltValueField(wireName: 'Order_Items')
  BuiltList<DocumentReference> get orderItems;

  @nullable
  @BuiltValueField(wireName: 'order_itemsTest')
  BuiltList<DocumentReference> get orderItemsTest;

  @nullable
  bool get delivered;

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

  static void _initializeBuilder(OrdersRecordBuilder builder) => builder
    ..pickedUpByDriver = false
    ..orderTotal = 0
    ..deliveryFee = 0
    ..orderItems = ListBuilder()
    ..orderItemsTest = ListBuilder()
    ..delivered = false
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static OrdersRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      OrdersRecord(
        (c) => c
          ..userOrder = safeGet(() => toRef(snapshot.data['user_Order']))
          ..driverForOrder =
              safeGet(() => toRef(snapshot.data['driver_ForOrder']))
          ..pickedUpByDriver = snapshot.data['PickedUp_ByDriver']
          ..orderTotal = snapshot.data['Order_total']?.round()
          ..storeOrderdFrom =
              safeGet(() => toRef(snapshot.data['storeOrderd_from']))
          ..deliveryFee = snapshot.data['delivery_fee']?.round()
          ..timePickedUp = safeGet(() => DateTime.fromMillisecondsSinceEpoch(
              snapshot.data['time_pickedUp']))
          ..timeDelivered = safeGet(() => DateTime.fromMillisecondsSinceEpoch(
              snapshot.data['time_delivered']))
          ..orderItems = safeGet(() =>
              ListBuilder(snapshot.data['Order_Items'].map((s) => toRef(s))))
          ..orderItemsTest = safeGet(() => ListBuilder(
              snapshot.data['order_itemsTest'].map((s) => toRef(s))))
          ..delivered = snapshot.data['delivered']
          ..email = snapshot.data['email']
          ..displayName = snapshot.data['display_name']
          ..photoUrl = snapshot.data['photo_url']
          ..uid = snapshot.data['uid']
          ..createdTime = safeGet(() => DateTime.fromMillisecondsSinceEpoch(
              snapshot.data['created_time']))
          ..phoneNumber = snapshot.data['phone_number']
          ..reference = OrdersRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<OrdersRecord>> search(
          {String term,
          FutureOr<LatLng> location,
          int maxResults,
          double searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'Orders',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  OrdersRecord._();
  factory OrdersRecord([void Function(OrdersRecordBuilder) updates]) =
      _$OrdersRecord;

  static OrdersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createOrdersRecordData({
  DocumentReference userOrder,
  DocumentReference driverForOrder,
  bool pickedUpByDriver,
  int orderTotal,
  DocumentReference storeOrderdFrom,
  int deliveryFee,
  DateTime timePickedUp,
  DateTime timeDelivered,
  bool delivered,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        OrdersRecord.serializer,
        OrdersRecord((o) => o
          ..userOrder = userOrder
          ..driverForOrder = driverForOrder
          ..pickedUpByDriver = pickedUpByDriver
          ..orderTotal = orderTotal
          ..storeOrderdFrom = storeOrderdFrom
          ..deliveryFee = deliveryFee
          ..timePickedUp = timePickedUp
          ..timeDelivered = timeDelivered
          ..orderItems = null
          ..orderItemsTest = null
          ..delivered = delivered
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
