import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get password;

  @nullable
  @BuiltValueField(wireName: 'Address')
  String get address;

  @nullable
  @BuiltValueField(wireName: 'AddressLatLng')
  LatLng get addressLatLng;

  @nullable
  @BuiltValueField(wireName: 'Driver')
  bool get driver;

  @nullable
  @BuiltValueField(wireName: 'BusinessOwner')
  bool get businessOwner;

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
  @BuiltValueField(wireName: 'full_name')
  String get fullName;

  @nullable
  @BuiltValueField(wireName: 'professional_service_provider')
  bool get professionalServiceProvider;

  @nullable
  @BuiltValueField(wireName: 'Service_licence_image')
  String get serviceLicenceImage;

  @nullable
  @BuiltValueField(wireName: 'pro_service_state_issued')
  String get proServiceStateIssued;

  @nullable
  @BuiltValueField(wireName: 'pro_licnce_issue_date')
  String get proLicnceIssueDate;

  @nullable
  bool get admin;

  @nullable
  @BuiltValueField(wireName: 'Delivery')
  bool get delivery;

  @nullable
  @BuiltValueField(wireName: 'StripeCust_ID')
  String get stripeCustID;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..password = ''
    ..address = ''
    ..driver = false
    ..businessOwner = false
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..fullName = ''
    ..professionalServiceProvider = false
    ..serviceLicenceImage = ''
    ..proServiceStateIssued = ''
    ..proLicnceIssueDate = ''
    ..admin = false
    ..delivery = false
    ..stripeCustID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static UsersRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) => UsersRecord(
        (c) => c
          ..password = snapshot.data['password']
          ..address = snapshot.data['Address']
          ..addressLatLng = safeGet(() => LatLng(
                snapshot.data['_geoloc']['lat'],
                snapshot.data['_geoloc']['lng'],
              ))
          ..driver = snapshot.data['Driver']
          ..businessOwner = snapshot.data['BusinessOwner']
          ..email = snapshot.data['email']
          ..displayName = snapshot.data['display_name']
          ..photoUrl = snapshot.data['photo_url']
          ..uid = snapshot.data['uid']
          ..createdTime = safeGet(() => DateTime.fromMillisecondsSinceEpoch(
              snapshot.data['created_time']))
          ..phoneNumber = snapshot.data['phone_number']
          ..fullName = snapshot.data['full_name']
          ..professionalServiceProvider =
              snapshot.data['professional_service_provider']
          ..serviceLicenceImage = snapshot.data['Service_licence_image']
          ..proServiceStateIssued = snapshot.data['pro_service_state_issued']
          ..proLicnceIssueDate = snapshot.data['pro_licnce_issue_date']
          ..admin = snapshot.data['admin']
          ..delivery = snapshot.data['Delivery']
          ..stripeCustID = snapshot.data['StripeCust_ID']
          ..reference = UsersRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<UsersRecord>> search(
          {String term,
          FutureOr<LatLng> location,
          int maxResults,
          double searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'Users',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String password,
  String address,
  LatLng addressLatLng,
  bool driver,
  bool businessOwner,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String fullName,
  bool professionalServiceProvider,
  String serviceLicenceImage,
  String proServiceStateIssued,
  String proLicnceIssueDate,
  bool admin,
  bool delivery,
  String stripeCustID,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..password = password
          ..address = address
          ..addressLatLng = addressLatLng
          ..driver = driver
          ..businessOwner = businessOwner
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..fullName = fullName
          ..professionalServiceProvider = professionalServiceProvider
          ..serviceLicenceImage = serviceLicenceImage
          ..proServiceStateIssued = proServiceStateIssued
          ..proLicnceIssueDate = proLicnceIssueDate
          ..admin = admin
          ..delivery = delivery
          ..stripeCustID = stripeCustID));
