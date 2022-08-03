// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_catigories_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StoreCatigoriesRecord> _$storeCatigoriesRecordSerializer =
    new _$StoreCatigoriesRecordSerializer();

class _$StoreCatigoriesRecordSerializer
    implements StructuredSerializer<StoreCatigoriesRecord> {
  @override
  final Iterable<Type> types = const [
    StoreCatigoriesRecord,
    _$StoreCatigoriesRecord
  ];
  @override
  final String wireName = 'StoreCatigoriesRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, StoreCatigoriesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.categoryName;
    if (value != null) {
      result
        ..add('CategoryName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storeRefrence;
    if (value != null) {
      result
        ..add('Store_Refrence')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.productRefrence;
    if (value != null) {
      result
        ..add('Product_refrence')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.catNames;
    if (value != null) {
      result
        ..add('CatNames')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  StoreCatigoriesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoreCatigoriesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'CategoryName':
          result.categoryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Store_Refrence':
          result.storeRefrence.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'Product_refrence':
          result.productRefrence.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'CatNames':
          result.catNames = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$StoreCatigoriesRecord extends StoreCatigoriesRecord {
  @override
  final String categoryName;
  @override
  final BuiltList<DocumentReference<Object>> storeRefrence;
  @override
  final BuiltList<DocumentReference<Object>> productRefrence;
  @override
  final String catNames;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final DocumentReference<Object> reference;

  factory _$StoreCatigoriesRecord(
          [void Function(StoreCatigoriesRecordBuilder) updates]) =>
      (new StoreCatigoriesRecordBuilder()..update(updates))._build();

  _$StoreCatigoriesRecord._(
      {this.categoryName,
      this.storeRefrence,
      this.productRefrence,
      this.catNames,
      this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.reference})
      : super._();

  @override
  StoreCatigoriesRecord rebuild(
          void Function(StoreCatigoriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreCatigoriesRecordBuilder toBuilder() =>
      new StoreCatigoriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreCatigoriesRecord &&
        categoryName == other.categoryName &&
        storeRefrence == other.storeRefrence &&
        productRefrence == other.productRefrence &&
        catNames == other.catNames &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, categoryName.hashCode),
                                            storeRefrence.hashCode),
                                        productRefrence.hashCode),
                                    catNames.hashCode),
                                email.hashCode),
                            displayName.hashCode),
                        photoUrl.hashCode),
                    uid.hashCode),
                createdTime.hashCode),
            phoneNumber.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StoreCatigoriesRecord')
          ..add('categoryName', categoryName)
          ..add('storeRefrence', storeRefrence)
          ..add('productRefrence', productRefrence)
          ..add('catNames', catNames)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('reference', reference))
        .toString();
  }
}

class StoreCatigoriesRecordBuilder
    implements Builder<StoreCatigoriesRecord, StoreCatigoriesRecordBuilder> {
  _$StoreCatigoriesRecord _$v;

  String _categoryName;
  String get categoryName => _$this._categoryName;
  set categoryName(String categoryName) => _$this._categoryName = categoryName;

  ListBuilder<DocumentReference<Object>> _storeRefrence;
  ListBuilder<DocumentReference<Object>> get storeRefrence =>
      _$this._storeRefrence ??= new ListBuilder<DocumentReference<Object>>();
  set storeRefrence(ListBuilder<DocumentReference<Object>> storeRefrence) =>
      _$this._storeRefrence = storeRefrence;

  ListBuilder<DocumentReference<Object>> _productRefrence;
  ListBuilder<DocumentReference<Object>> get productRefrence =>
      _$this._productRefrence ??= new ListBuilder<DocumentReference<Object>>();
  set productRefrence(ListBuilder<DocumentReference<Object>> productRefrence) =>
      _$this._productRefrence = productRefrence;

  String _catNames;
  String get catNames => _$this._catNames;
  set catNames(String catNames) => _$this._catNames = catNames;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  StoreCatigoriesRecordBuilder() {
    StoreCatigoriesRecord._initializeBuilder(this);
  }

  StoreCatigoriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoryName = $v.categoryName;
      _storeRefrence = $v.storeRefrence?.toBuilder();
      _productRefrence = $v.productRefrence?.toBuilder();
      _catNames = $v.catNames;
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoreCatigoriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StoreCatigoriesRecord;
  }

  @override
  void update(void Function(StoreCatigoriesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  StoreCatigoriesRecord build() => _build();

  _$StoreCatigoriesRecord _build() {
    _$StoreCatigoriesRecord _$result;
    try {
      _$result = _$v ??
          new _$StoreCatigoriesRecord._(
              categoryName: categoryName,
              storeRefrence: _storeRefrence?.build(),
              productRefrence: _productRefrence?.build(),
              catNames: catNames,
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'storeRefrence';
        _storeRefrence?.build();
        _$failedField = 'productRefrence';
        _productRefrence?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StoreCatigoriesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
