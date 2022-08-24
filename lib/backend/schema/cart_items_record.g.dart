// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_items_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CartItemsRecord> _$cartItemsRecordSerializer =
    new _$CartItemsRecordSerializer();

class _$CartItemsRecordSerializer
    implements StructuredSerializer<CartItemsRecord> {
  @override
  final Iterable<Type> types = const [CartItemsRecord, _$CartItemsRecord];
  @override
  final String wireName = 'CartItemsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CartItemsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.productsInCart;
    if (value != null) {
      result
        ..add('products_inCart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.itemStore;
    if (value != null) {
      result
        ..add('item_store')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.storeStripeId;
    if (value != null) {
      result
        ..add('storeStripeId')
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
  CartItemsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartItemsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'products_inCart':
          result.productsInCart = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'item_store':
          result.itemStore = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'storeStripeId':
          result.storeStripeId = serializers.deserialize(value,
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

class _$CartItemsRecord extends CartItemsRecord {
  @override
  final DocumentReference<Object> productsInCart;
  @override
  final int price;
  @override
  final int quantity;
  @override
  final DocumentReference<Object> user;
  @override
  final DocumentReference<Object> itemStore;
  @override
  final String storeStripeId;
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
  final String paymentInitId;
  @override
  final DocumentReference<Object> reference;

  factory _$CartItemsRecord([void Function(CartItemsRecordBuilder) updates]) =>
      (new CartItemsRecordBuilder()..update(updates))._build();

  _$CartItemsRecord._(
      {this.productsInCart,
      this.price,
      this.quantity,
      this.user,
      this.itemStore,
      this.storeStripeId,
      this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.paymentInitId,
      this.reference})
      : super._();

  @override
  CartItemsRecord rebuild(void Function(CartItemsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartItemsRecordBuilder toBuilder() =>
      new CartItemsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartItemsRecord &&
        productsInCart == other.productsInCart &&
        price == other.price &&
        quantity == other.quantity &&
        user == other.user &&
        itemStore == other.itemStore &&
        storeStripeId == other.storeStripeId &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        paymentInitId == other.paymentInitId &&
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
                                                            0,
                                                            productsInCart
                                                                .hashCode),
                                                        price.hashCode),
                                                    quantity.hashCode),
                                                user.hashCode),
                                            itemStore.hashCode),
                                        storeStripeId.hashCode),
                                    email.hashCode),
                                displayName.hashCode),
                            photoUrl.hashCode),
                        uid.hashCode),
                    createdTime.hashCode),
                phoneNumber.hashCode),
            paymentInitId.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CartItemsRecord')
          ..add('productsInCart', productsInCart)
          ..add('price', price)
          ..add('quantity', quantity)
          ..add('user', user)
          ..add('itemStore', itemStore)
          ..add('storeStripeId', storeStripeId)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('paymentInitId', paymentInitId)
          ..add('reference', reference))
        .toString();
  }
}

class CartItemsRecordBuilder
    implements Builder<CartItemsRecord, CartItemsRecordBuilder> {
  _$CartItemsRecord _$v;

  DocumentReference<Object> _productsInCart;

  String paymentInitId;
  DocumentReference<Object> get productsInCart => _$this._productsInCart;

  set productsInCart(DocumentReference<Object> productsInCart) =>
      _$this._productsInCart = productsInCart;

  int _price;
  int get price => _$this._price;
  set price(int price) => _$this._price = price;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  DocumentReference<Object> _itemStore;
  DocumentReference<Object> get itemStore => _$this._itemStore;
  set itemStore(DocumentReference<Object> itemStore) =>
      _$this._itemStore = itemStore;

  String _storeStripeId;
  String get storeStripeId => _$this._storeStripeId;
  set storeStripeId(String storeStripeId) =>
      _$this._storeStripeId = storeStripeId;

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

  String _paymentInitId;
  String get paymentIntId => _$this._paymentInitId;
  set paymentIntId(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CartItemsRecordBuilder() {
    CartItemsRecord._initializeBuilder(this);
  }

  CartItemsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productsInCart = $v.productsInCart;
      _price = $v.price;
      _quantity = $v.quantity;
      _user = $v.user;
      _itemStore = $v.itemStore;
      _storeStripeId = $v.storeStripeId;
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
  void replace(CartItemsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartItemsRecord;
  }

  @override
  void update(void Function(CartItemsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  CartItemsRecord build() => _build();

  _$CartItemsRecord _build() {
    final _$result = _$v ??
        new _$CartItemsRecord._(
            productsInCart: productsInCart,
            price: price,
            quantity: quantity,
            user: user,
            itemStore: itemStore,
            storeStripeId: storeStripeId,
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
