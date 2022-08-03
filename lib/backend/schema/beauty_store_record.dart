import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'beauty_store_record.g.dart';

abstract class BeautyStoreRecord
    implements Built<BeautyStoreRecord, BeautyStoreRecordBuilder> {
  static Serializer<BeautyStoreRecord> get serializer =>
      _$beautyStoreRecordSerializer;

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
  @BuiltValueField(wireName: 'store_owner')
  DocumentReference get storeOwner;

  @nullable
  @BuiltValueField(wireName: 'Store_Address')
  String get storeAddress;

  @nullable
  @BuiltValueField(wireName: 'store_location_LatLng')
  LatLng get storeLocationLatLng;

  @nullable
  @BuiltValueField(wireName: 'store_products')
  DocumentReference get storeProducts;

  @nullable
  @BuiltValueField(wireName: 'store_phoneNumber')
  String get storePhoneNumber;

  @nullable
  @BuiltValueField(wireName: 'Store_ownerPhoto')
  String get storeOwnerPhoto;

  @nullable
  @BuiltValueField(wireName: 'store_email')
  String get storeEmail;

  @nullable
  @BuiltValueField(wireName: 'store_Website')
  String get storeWebsite;

  @nullable
  @BuiltValueField(wireName: 'store_stripeID')
  String get storeStripeID;

  @nullable
  @BuiltValueField(wireName: 'store_IsOpen')
  bool get storeIsOpen;

  @nullable
  @BuiltValueField(wireName: 'store_Discription')
  String get storeDiscription;

  @nullable
  @BuiltValueField(wireName: 'store_PickUp')
  bool get storePickUp;

  @nullable
  @BuiltValueField(wireName: 'store_localDelivery')
  bool get storeLocalDelivery;

  @nullable
  @BuiltValueField(wireName: 'store_rating')
  int get storeRating;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BeautyStoreRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..storeAddress = ''
    ..storePhoneNumber = ''
    ..storeOwnerPhoto = ''
    ..storeEmail = ''
    ..storeWebsite = ''
    ..storeStripeID = ''
    ..storeIsOpen = false
    ..storeDiscription = ''
    ..storePickUp = false
    ..storeLocalDelivery = false
    ..storeRating = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Beauty_Store');

  static Stream<BeautyStoreRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BeautyStoreRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static BeautyStoreRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      BeautyStoreRecord(
        (c) => c
          ..email = snapshot.data['email']
          ..displayName = snapshot.data['display_name']
          ..photoUrl = snapshot.data['photo_url']
          ..uid = snapshot.data['uid']
          ..createdTime = safeGet(() => DateTime.fromMillisecondsSinceEpoch(
              snapshot.data['created_time']))
          ..phoneNumber = snapshot.data['phone_number']
          ..storeOwner = safeGet(() => toRef(snapshot.data['store_owner']))
          ..storeAddress = snapshot.data['Store_Address']
          ..storeLocationLatLng = safeGet(() => LatLng(
                snapshot.data['_geoloc']['lat'],
                snapshot.data['_geoloc']['lng'],
              ))
          ..storeProducts =
              safeGet(() => toRef(snapshot.data['store_products']))
          ..storePhoneNumber = snapshot.data['store_phoneNumber']
          ..storeOwnerPhoto = snapshot.data['Store_ownerPhoto']
          ..storeEmail = snapshot.data['store_email']
          ..storeWebsite = snapshot.data['store_Website']
          ..storeStripeID = snapshot.data['store_stripeID']
          ..storeIsOpen = snapshot.data['store_IsOpen']
          ..storeDiscription = snapshot.data['store_Discription']
          ..storePickUp = snapshot.data['store_PickUp']
          ..storeLocalDelivery = snapshot.data['store_localDelivery']
          ..storeRating = snapshot.data['store_rating']?.round()
          ..reference = BeautyStoreRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<BeautyStoreRecord>> search(
          {String term,
          FutureOr<LatLng> location,
          int maxResults,
          double searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'Beauty_Store',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  BeautyStoreRecord._();
  factory BeautyStoreRecord([void Function(BeautyStoreRecordBuilder) updates]) =
      _$BeautyStoreRecord;

  static BeautyStoreRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBeautyStoreRecordData({
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  DocumentReference storeOwner,
  String storeAddress,
  LatLng storeLocationLatLng,
  DocumentReference storeProducts,
  String storePhoneNumber,
  String storeOwnerPhoto,
  String storeEmail,
  String storeWebsite,
  String storeStripeID,
  bool storeIsOpen,
  String storeDiscription,
  bool storePickUp,
  bool storeLocalDelivery,
  int storeRating,
}) =>
    serializers.toFirestore(
        BeautyStoreRecord.serializer,
        BeautyStoreRecord((b) => b
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..storeOwner = storeOwner
          ..storeAddress = storeAddress
          ..storeLocationLatLng = storeLocationLatLng
          ..storeProducts = storeProducts
          ..storePhoneNumber = storePhoneNumber
          ..storeOwnerPhoto = storeOwnerPhoto
          ..storeEmail = storeEmail
          ..storeWebsite = storeWebsite
          ..storeStripeID = storeStripeID
          ..storeIsOpen = storeIsOpen
          ..storeDiscription = storeDiscription
          ..storePickUp = storePickUp
          ..storeLocalDelivery = storeLocalDelivery
          ..storeRating = storeRating));
