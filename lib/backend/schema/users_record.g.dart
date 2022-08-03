// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('Address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressLatLng;
    if (value != null) {
      result
        ..add('AddressLatLng')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.driver;
    if (value != null) {
      result
        ..add('Driver')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.businessOwner;
    if (value != null) {
      result
        ..add('BusinessOwner')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
    value = object.fullName;
    if (value != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.professionalServiceProvider;
    if (value != null) {
      result
        ..add('professional_service_provider')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.serviceLicenceImage;
    if (value != null) {
      result
        ..add('Service_licence_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.proServiceStateIssued;
    if (value != null) {
      result
        ..add('pro_service_state_issued')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.proLicnceIssueDate;
    if (value != null) {
      result
        ..add('pro_licnce_issue_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.admin;
    if (value != null) {
      result
        ..add('admin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.delivery;
    if (value != null) {
      result
        ..add('Delivery')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.stripeCustID;
    if (value != null) {
      result
        ..add('StripeCust_ID')
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'AddressLatLng':
          result.addressLatLng = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'Driver':
          result.driver = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'BusinessOwner':
          result.businessOwner = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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
        case 'full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'professional_service_provider':
          result.professionalServiceProvider = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Service_licence_image':
          result.serviceLicenceImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pro_service_state_issued':
          result.proServiceStateIssued = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pro_licnce_issue_date':
          result.proLicnceIssueDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'admin':
          result.admin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Delivery':
          result.delivery = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'StripeCust_ID':
          result.stripeCustID = serializers.deserialize(value,
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

class _$UsersRecord extends UsersRecord {
  @override
  final String password;
  @override
  final String address;
  @override
  final LatLng addressLatLng;
  @override
  final bool driver;
  @override
  final bool businessOwner;
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
  final String fullName;
  @override
  final bool professionalServiceProvider;
  @override
  final String serviceLicenceImage;
  @override
  final String proServiceStateIssued;
  @override
  final String proLicnceIssueDate;
  @override
  final bool admin;
  @override
  final bool delivery;
  @override
  final String stripeCustID;
  @override
  final DocumentReference<Object> reference;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.password,
      this.address,
      this.addressLatLng,
      this.driver,
      this.businessOwner,
      this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.fullName,
      this.professionalServiceProvider,
      this.serviceLicenceImage,
      this.proServiceStateIssued,
      this.proLicnceIssueDate,
      this.admin,
      this.delivery,
      this.stripeCustID,
      this.reference})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        password == other.password &&
        address == other.address &&
        addressLatLng == other.addressLatLng &&
        driver == other.driver &&
        businessOwner == other.businessOwner &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        fullName == other.fullName &&
        professionalServiceProvider == other.professionalServiceProvider &&
        serviceLicenceImage == other.serviceLicenceImage &&
        proServiceStateIssued == other.proServiceStateIssued &&
        proLicnceIssueDate == other.proLicnceIssueDate &&
        admin == other.admin &&
        delivery == other.delivery &&
        stripeCustID == other.stripeCustID &&
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
                                                                            $jc($jc(0, password.hashCode),
                                                                                address.hashCode),
                                                                            addressLatLng.hashCode),
                                                                        driver.hashCode),
                                                                    businessOwner.hashCode),
                                                                email.hashCode),
                                                            displayName.hashCode),
                                                        photoUrl.hashCode),
                                                    uid.hashCode),
                                                createdTime.hashCode),
                                            phoneNumber.hashCode),
                                        fullName.hashCode),
                                    professionalServiceProvider.hashCode),
                                serviceLicenceImage.hashCode),
                            proServiceStateIssued.hashCode),
                        proLicnceIssueDate.hashCode),
                    admin.hashCode),
                delivery.hashCode),
            stripeCustID.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('password', password)
          ..add('address', address)
          ..add('addressLatLng', addressLatLng)
          ..add('driver', driver)
          ..add('businessOwner', businessOwner)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('fullName', fullName)
          ..add('professionalServiceProvider', professionalServiceProvider)
          ..add('serviceLicenceImage', serviceLicenceImage)
          ..add('proServiceStateIssued', proServiceStateIssued)
          ..add('proLicnceIssueDate', proLicnceIssueDate)
          ..add('admin', admin)
          ..add('delivery', delivery)
          ..add('stripeCustID', stripeCustID)
          ..add('reference', reference))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  LatLng _addressLatLng;
  LatLng get addressLatLng => _$this._addressLatLng;
  set addressLatLng(LatLng addressLatLng) =>
      _$this._addressLatLng = addressLatLng;

  bool _driver;
  bool get driver => _$this._driver;
  set driver(bool driver) => _$this._driver = driver;

  bool _businessOwner;
  bool get businessOwner => _$this._businessOwner;
  set businessOwner(bool businessOwner) =>
      _$this._businessOwner = businessOwner;

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

  String _fullName;
  String get fullName => _$this._fullName;
  set fullName(String fullName) => _$this._fullName = fullName;

  bool _professionalServiceProvider;
  bool get professionalServiceProvider => _$this._professionalServiceProvider;
  set professionalServiceProvider(bool professionalServiceProvider) =>
      _$this._professionalServiceProvider = professionalServiceProvider;

  String _serviceLicenceImage;
  String get serviceLicenceImage => _$this._serviceLicenceImage;
  set serviceLicenceImage(String serviceLicenceImage) =>
      _$this._serviceLicenceImage = serviceLicenceImage;

  String _proServiceStateIssued;
  String get proServiceStateIssued => _$this._proServiceStateIssued;
  set proServiceStateIssued(String proServiceStateIssued) =>
      _$this._proServiceStateIssued = proServiceStateIssued;

  String _proLicnceIssueDate;
  String get proLicnceIssueDate => _$this._proLicnceIssueDate;
  set proLicnceIssueDate(String proLicnceIssueDate) =>
      _$this._proLicnceIssueDate = proLicnceIssueDate;

  bool _admin;
  bool get admin => _$this._admin;
  set admin(bool admin) => _$this._admin = admin;

  bool _delivery;
  bool get delivery => _$this._delivery;
  set delivery(bool delivery) => _$this._delivery = delivery;

  String _stripeCustID;
  String get stripeCustID => _$this._stripeCustID;
  set stripeCustID(String stripeCustID) => _$this._stripeCustID = stripeCustID;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _address = $v.address;
      _addressLatLng = $v.addressLatLng;
      _driver = $v.driver;
      _businessOwner = $v.businessOwner;
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _fullName = $v.fullName;
      _professionalServiceProvider = $v.professionalServiceProvider;
      _serviceLicenceImage = $v.serviceLicenceImage;
      _proServiceStateIssued = $v.proServiceStateIssued;
      _proLicnceIssueDate = $v.proLicnceIssueDate;
      _admin = $v.admin;
      _delivery = $v.delivery;
      _stripeCustID = $v.stripeCustID;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            password: password,
            address: address,
            addressLatLng: addressLatLng,
            driver: driver,
            businessOwner: businessOwner,
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            fullName: fullName,
            professionalServiceProvider: professionalServiceProvider,
            serviceLicenceImage: serviceLicenceImage,
            proServiceStateIssued: proServiceStateIssued,
            proLicnceIssueDate: proLicnceIssueDate,
            admin: admin,
            delivery: delivery,
            stripeCustID: stripeCustID,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
