// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beauty_store_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BeautyStoreRecord> _$beautyStoreRecordSerializer =
    new _$BeautyStoreRecordSerializer();

class _$BeautyStoreRecordSerializer
    implements StructuredSerializer<BeautyStoreRecord> {
  @override
  final Iterable<Type> types = const [BeautyStoreRecord, _$BeautyStoreRecord];
  @override
  final String wireName = 'BeautyStoreRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, BeautyStoreRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
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
    value = object.storeOwner;
    if (value != null) {
      result
        ..add('store_owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.storeAddress;
    if (value != null) {
      result
        ..add('Store_Address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storeLocationLatLng;
    if (value != null) {
      result
        ..add('store_location_LatLng')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.storeProducts;
    if (value != null) {
      result
        ..add('store_products')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.storePhoneNumber;
    if (value != null) {
      result
        ..add('store_phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storeOwnerPhoto;
    if (value != null) {
      result
        ..add('Store_ownerPhoto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storeEmail;
    if (value != null) {
      result
        ..add('store_email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storeWebsite;
    if (value != null) {
      result
        ..add('store_Website')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storeStripeID;
    if (value != null) {
      result
        ..add('store_stripeID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storeIsOpen;
    if (value != null) {
      result
        ..add('store_IsOpen')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.storeDiscription;
    if (value != null) {
      result
        ..add('store_Discription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storePickUp;
    if (value != null) {
      result
        ..add('store_PickUp')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.storeLocalDelivery;
    if (value != null) {
      result
        ..add('store_localDelivery')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.storeRating;
    if (value != null) {
      result
        ..add('store_rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  BeautyStoreRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BeautyStoreRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
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
        case 'store_owner':
          result.storeOwner = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Store_Address':
          result.storeAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'store_location_LatLng':
          result.storeLocationLatLng = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'store_products':
          result.storeProducts = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'store_phoneNumber':
          result.storePhoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Store_ownerPhoto':
          result.storeOwnerPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'store_email':
          result.storeEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'store_Website':
          result.storeWebsite = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'store_stripeID':
          result.storeStripeID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'store_IsOpen':
          result.storeIsOpen = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'store_Discription':
          result.storeDiscription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'store_PickUp':
          result.storePickUp = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'store_localDelivery':
          result.storeLocalDelivery = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'store_rating':
          result.storeRating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$BeautyStoreRecord extends BeautyStoreRecord {
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
  final DocumentReference<Object> storeOwner;
  @override
  final String storeAddress;
  @override
  final LatLng storeLocationLatLng;
  @override
  final DocumentReference<Object> storeProducts;
  @override
  final String storePhoneNumber;
  @override
  final String storeOwnerPhoto;
  @override
  final String storeEmail;
  @override
  final String storeWebsite;
  @override
  final String storeStripeID;
  @override
  final bool storeIsOpen;
  @override
  final String storeDiscription;
  @override
  final bool storePickUp;
  @override
  final bool storeLocalDelivery;
  @override
  final int storeRating;
  @override
  final DocumentReference<Object> reference;

  factory _$BeautyStoreRecord(
          [void Function(BeautyStoreRecordBuilder) updates]) =>
      (new BeautyStoreRecordBuilder()..update(updates))._build();

  _$BeautyStoreRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.storeOwner,
      this.storeAddress,
      this.storeLocationLatLng,
      this.storeProducts,
      this.storePhoneNumber,
      this.storeOwnerPhoto,
      this.storeEmail,
      this.storeWebsite,
      this.storeStripeID,
      this.storeIsOpen,
      this.storeDiscription,
      this.storePickUp,
      this.storeLocalDelivery,
      this.storeRating,
      this.reference})
      : super._();

  @override
  BeautyStoreRecord rebuild(void Function(BeautyStoreRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BeautyStoreRecordBuilder toBuilder() =>
      new BeautyStoreRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BeautyStoreRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        storeOwner == other.storeOwner &&
        storeAddress == other.storeAddress &&
        storeLocationLatLng == other.storeLocationLatLng &&
        storeProducts == other.storeProducts &&
        storePhoneNumber == other.storePhoneNumber &&
        storeOwnerPhoto == other.storeOwnerPhoto &&
        storeEmail == other.storeEmail &&
        storeWebsite == other.storeWebsite &&
        storeStripeID == other.storeStripeID &&
        storeIsOpen == other.storeIsOpen &&
        storeDiscription == other.storeDiscription &&
        storePickUp == other.storePickUp &&
        storeLocalDelivery == other.storeLocalDelivery &&
        storeRating == other.storeRating &&
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
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc(0, email.hashCode), displayName.hashCode),
                                                                                photoUrl.hashCode),
                                                                            uid.hashCode),
                                                                        createdTime.hashCode),
                                                                    phoneNumber.hashCode),
                                                                storeOwner.hashCode),
                                                            storeAddress.hashCode),
                                                        storeLocationLatLng.hashCode),
                                                    storeProducts.hashCode),
                                                storePhoneNumber.hashCode),
                                            storeOwnerPhoto.hashCode),
                                        storeEmail.hashCode),
                                    storeWebsite.hashCode),
                                storeStripeID.hashCode),
                            storeIsOpen.hashCode),
                        storeDiscription.hashCode),
                    storePickUp.hashCode),
                storeLocalDelivery.hashCode),
            storeRating.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BeautyStoreRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('storeOwner', storeOwner)
          ..add('storeAddress', storeAddress)
          ..add('storeLocationLatLng', storeLocationLatLng)
          ..add('storeProducts', storeProducts)
          ..add('storePhoneNumber', storePhoneNumber)
          ..add('storeOwnerPhoto', storeOwnerPhoto)
          ..add('storeEmail', storeEmail)
          ..add('storeWebsite', storeWebsite)
          ..add('storeStripeID', storeStripeID)
          ..add('storeIsOpen', storeIsOpen)
          ..add('storeDiscription', storeDiscription)
          ..add('storePickUp', storePickUp)
          ..add('storeLocalDelivery', storeLocalDelivery)
          ..add('storeRating', storeRating)
          ..add('reference', reference))
        .toString();
  }
}

class BeautyStoreRecordBuilder
    implements Builder<BeautyStoreRecord, BeautyStoreRecordBuilder> {
  _$BeautyStoreRecord _$v;

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

  DocumentReference<Object> _storeOwner;
  DocumentReference<Object> get storeOwner => _$this._storeOwner;
  set storeOwner(DocumentReference<Object> storeOwner) =>
      _$this._storeOwner = storeOwner;

  String _storeAddress;
  String get storeAddress => _$this._storeAddress;
  set storeAddress(String storeAddress) => _$this._storeAddress = storeAddress;

  LatLng _storeLocationLatLng;
  LatLng get storeLocationLatLng => _$this._storeLocationLatLng;
  set storeLocationLatLng(LatLng storeLocationLatLng) =>
      _$this._storeLocationLatLng = storeLocationLatLng;

  DocumentReference<Object> _storeProducts;
  DocumentReference<Object> get storeProducts => _$this._storeProducts;
  set storeProducts(DocumentReference<Object> storeProducts) =>
      _$this._storeProducts = storeProducts;

  String _storePhoneNumber;
  String get storePhoneNumber => _$this._storePhoneNumber;
  set storePhoneNumber(String storePhoneNumber) =>
      _$this._storePhoneNumber = storePhoneNumber;

  String _storeOwnerPhoto;
  String get storeOwnerPhoto => _$this._storeOwnerPhoto;
  set storeOwnerPhoto(String storeOwnerPhoto) =>
      _$this._storeOwnerPhoto = storeOwnerPhoto;

  String _storeEmail;
  String get storeEmail => _$this._storeEmail;
  set storeEmail(String storeEmail) => _$this._storeEmail = storeEmail;

  String _storeWebsite;
  String get storeWebsite => _$this._storeWebsite;
  set storeWebsite(String storeWebsite) => _$this._storeWebsite = storeWebsite;

  String _storeStripeID;
  String get storeStripeID => _$this._storeStripeID;
  set storeStripeID(String storeStripeID) =>
      _$this._storeStripeID = storeStripeID;

  bool _storeIsOpen;
  bool get storeIsOpen => _$this._storeIsOpen;
  set storeIsOpen(bool storeIsOpen) => _$this._storeIsOpen = storeIsOpen;

  String _storeDiscription;
  String get storeDiscription => _$this._storeDiscription;
  set storeDiscription(String storeDiscription) =>
      _$this._storeDiscription = storeDiscription;

  bool _storePickUp;
  bool get storePickUp => _$this._storePickUp;
  set storePickUp(bool storePickUp) => _$this._storePickUp = storePickUp;

  bool _storeLocalDelivery;
  bool get storeLocalDelivery => _$this._storeLocalDelivery;
  set storeLocalDelivery(bool storeLocalDelivery) =>
      _$this._storeLocalDelivery = storeLocalDelivery;

  int _storeRating;
  int get storeRating => _$this._storeRating;
  set storeRating(int storeRating) => _$this._storeRating = storeRating;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  BeautyStoreRecordBuilder() {
    BeautyStoreRecord._initializeBuilder(this);
  }

  BeautyStoreRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _storeOwner = $v.storeOwner;
      _storeAddress = $v.storeAddress;
      _storeLocationLatLng = $v.storeLocationLatLng;
      _storeProducts = $v.storeProducts;
      _storePhoneNumber = $v.storePhoneNumber;
      _storeOwnerPhoto = $v.storeOwnerPhoto;
      _storeEmail = $v.storeEmail;
      _storeWebsite = $v.storeWebsite;
      _storeStripeID = $v.storeStripeID;
      _storeIsOpen = $v.storeIsOpen;
      _storeDiscription = $v.storeDiscription;
      _storePickUp = $v.storePickUp;
      _storeLocalDelivery = $v.storeLocalDelivery;
      _storeRating = $v.storeRating;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BeautyStoreRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BeautyStoreRecord;
  }

  @override
  void update(void Function(BeautyStoreRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  BeautyStoreRecord build() => _build();

  _$BeautyStoreRecord _build() {
    final _$result = _$v ??
        new _$BeautyStoreRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            storeOwner: storeOwner,
            storeAddress: storeAddress,
            storeLocationLatLng: storeLocationLatLng,
            storeProducts: storeProducts,
            storePhoneNumber: storePhoneNumber,
            storeOwnerPhoto: storeOwnerPhoto,
            storeEmail: storeEmail,
            storeWebsite: storeWebsite,
            storeStripeID: storeStripeID,
            storeIsOpen: storeIsOpen,
            storeDiscription: storeDiscription,
            storePickUp: storePickUp,
            storeLocalDelivery: storeLocalDelivery,
            storeRating: storeRating,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
