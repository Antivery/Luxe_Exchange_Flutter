import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'store_catigories_record.g.dart';

abstract class StoreCatigoriesRecord
    implements Built<StoreCatigoriesRecord, StoreCatigoriesRecordBuilder> {
  static Serializer<StoreCatigoriesRecord> get serializer =>
      _$storeCatigoriesRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'CategoryName')
  String get categoryName;

  @nullable
  @BuiltValueField(wireName: 'Store_Refrence')
  BuiltList<DocumentReference> get storeRefrence;

  @nullable
  @BuiltValueField(wireName: 'Product_refrence')
  BuiltList<DocumentReference> get productRefrence;

  @nullable
  @BuiltValueField(wireName: 'CatNames')
  String get catNames;

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

  static void _initializeBuilder(StoreCatigoriesRecordBuilder builder) =>
      builder
        ..categoryName = ''
        ..storeRefrence = ListBuilder()
        ..productRefrence = ListBuilder()
        ..catNames = ''
        ..email = ''
        ..displayName = ''
        ..photoUrl = ''
        ..uid = ''
        ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Store_Catigories');

  static Stream<StoreCatigoriesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<StoreCatigoriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  StoreCatigoriesRecord._();
  factory StoreCatigoriesRecord(
          [void Function(StoreCatigoriesRecordBuilder) updates]) =
      _$StoreCatigoriesRecord;

  static StoreCatigoriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createStoreCatigoriesRecordData({
  String categoryName,
  String catNames,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        StoreCatigoriesRecord.serializer,
        StoreCatigoriesRecord((s) => s
          ..categoryName = categoryName
          ..storeRefrence = null
          ..productRefrence = null
          ..catNames = catNames
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
