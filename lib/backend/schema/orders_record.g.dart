// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrdersRecord> _$ordersRecordSerializer =
    new _$OrdersRecordSerializer();

class _$OrdersRecordSerializer implements StructuredSerializer<OrdersRecord> {
  @override
  final Iterable<Type> types = const [OrdersRecord, _$OrdersRecord];
  @override
  final String wireName = 'OrdersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, OrdersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.userOrder;
    if (value != null) {
      result
        ..add('user_Order')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.driverForOrder;
    if (value != null) {
      result
        ..add('driver_ForOrder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.pickedUpByDriver;
    if (value != null) {
      result
        ..add('PickedUp_ByDriver')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.orderTotal;
    if (value != null) {
      result
        ..add('Order_total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.storeOrderdFrom;
    if (value != null) {
      result
        ..add('storeOrderd_from')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.deliveryFee;
    if (value != null) {
      result
        ..add('delivery_fee')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.timePickedUp;
    if (value != null) {
      result
        ..add('time_pickedUp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.timeDelivered;
    if (value != null) {
      result
        ..add('time_delivered')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.orderItems;
    if (value != null) {
      result
        ..add('Order_Items')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.orderItemsTest;
    if (value != null) {
      result
        ..add('order_itemsTest')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.delivered;
    if (value != null) {
      result
        ..add('delivered')
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
    value = object.paymentInitId;
    if (value != null) {
      result
        ..add('payment_init_id')
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
  OrdersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrdersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user_Order':
          result.userOrder = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'driver_ForOrder':
          result.driverForOrder = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'PickedUp_ByDriver':
          result.pickedUpByDriver = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Order_total':
          result.orderTotal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'storeOrderd_from':
          result.storeOrderdFrom = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'delivery_fee':
          result.deliveryFee = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'time_pickedUp':
          result.timePickedUp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'time_delivered':
          result.timeDelivered = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Order_Items':
          result.orderItems.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'order_itemsTest':
          result.orderItemsTest.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'delivered':
          result.delivered = serializers.deserialize(value,
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
        case 'payment_init_id':
          result.paymentInitId = serializers.deserialize(value,
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

class _$OrdersRecord extends OrdersRecord {
  @override
  final DocumentReference<Object> userOrder;
  @override
  final DocumentReference<Object> driverForOrder;
  @override
  final bool pickedUpByDriver;
  @override
  final int orderTotal;
  @override
  final DocumentReference<Object> storeOrderdFrom;
  @override
  final int deliveryFee;
  @override
  final DateTime timePickedUp;
  @override
  final DateTime timeDelivered;
  @override
  final BuiltList<DocumentReference<Object>> orderItems;
  @override
  final BuiltList<DocumentReference<Object>> orderItemsTest;
  @override
  final bool delivered;
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

  factory _$OrdersRecord([void Function(OrdersRecordBuilder) updates]) =>
      (new OrdersRecordBuilder()..update(updates))._build();

  _$OrdersRecord._(
      {this.userOrder,
      this.driverForOrder,
      this.pickedUpByDriver,
      this.orderTotal,
      this.storeOrderdFrom,
      this.deliveryFee,
      this.timePickedUp,
      this.timeDelivered,
      this.orderItems,
      this.orderItemsTest,
      this.delivered,
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
  OrdersRecord rebuild(void Function(OrdersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersRecordBuilder toBuilder() => new OrdersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersRecord &&
        userOrder == other.userOrder &&
        driverForOrder == other.driverForOrder &&
        pickedUpByDriver == other.pickedUpByDriver &&
        orderTotal == other.orderTotal &&
        storeOrderdFrom == other.storeOrderdFrom &&
        deliveryFee == other.deliveryFee &&
        timePickedUp == other.timePickedUp &&
        timeDelivered == other.timeDelivered &&
        orderItems == other.orderItems &&
        orderItemsTest == other.orderItemsTest &&
        delivered == other.delivered &&
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
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                userOrder
                                                                                    .hashCode),
                                                                            driverForOrder
                                                                                .hashCode),
                                                                        pickedUpByDriver
                                                                            .hashCode),
                                                                    orderTotal
                                                                        .hashCode),
                                                                storeOrderdFrom
                                                                    .hashCode),
                                                            deliveryFee
                                                                .hashCode),
                                                        timePickedUp.hashCode),
                                                    timeDelivered.hashCode),
                                                orderItems.hashCode),
                                            orderItemsTest.hashCode),
                                        delivered.hashCode),
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
    return (newBuiltValueToStringHelper(r'OrdersRecord')
          ..add('userOrder', userOrder)
          ..add('driverForOrder', driverForOrder)
          ..add('pickedUpByDriver', pickedUpByDriver)
          ..add('orderTotal', orderTotal)
          ..add('storeOrderdFrom', storeOrderdFrom)
          ..add('deliveryFee', deliveryFee)
          ..add('timePickedUp', timePickedUp)
          ..add('timeDelivered', timeDelivered)
          ..add('orderItems', orderItems)
          ..add('orderItemsTest', orderItemsTest)
          ..add('delivered', delivered)
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

class OrdersRecordBuilder
    implements Builder<OrdersRecord, OrdersRecordBuilder> {
  _$OrdersRecord _$v;

  DocumentReference<Object> _userOrder;
  DocumentReference<Object> get userOrder => _$this._userOrder;
  set userOrder(DocumentReference<Object> userOrder) =>
      _$this._userOrder = userOrder;

  DocumentReference<Object> _driverForOrder;
  DocumentReference<Object> get driverForOrder => _$this._driverForOrder;
  set driverForOrder(DocumentReference<Object> driverForOrder) =>
      _$this._driverForOrder = driverForOrder;

  bool _pickedUpByDriver;
  bool get pickedUpByDriver => _$this._pickedUpByDriver;
  set pickedUpByDriver(bool pickedUpByDriver) =>
      _$this._pickedUpByDriver = pickedUpByDriver;

  int _orderTotal;
  int get orderTotal => _$this._orderTotal;
  set orderTotal(int orderTotal) => _$this._orderTotal = orderTotal;

  DocumentReference<Object> _storeOrderdFrom;
  DocumentReference<Object> get storeOrderdFrom => _$this._storeOrderdFrom;
  set storeOrderdFrom(DocumentReference<Object> storeOrderdFrom) =>
      _$this._storeOrderdFrom = storeOrderdFrom;

  int _deliveryFee;
  int get deliveryFee => _$this._deliveryFee;
  set deliveryFee(int deliveryFee) => _$this._deliveryFee = deliveryFee;

  DateTime _timePickedUp;
  DateTime get timePickedUp => _$this._timePickedUp;
  set timePickedUp(DateTime timePickedUp) =>
      _$this._timePickedUp = timePickedUp;

  DateTime _timeDelivered;
  DateTime get timeDelivered => _$this._timeDelivered;
  set timeDelivered(DateTime timeDelivered) =>
      _$this._timeDelivered = timeDelivered;

  ListBuilder<DocumentReference<Object>> _orderItems;
  ListBuilder<DocumentReference<Object>> get orderItems =>
      _$this._orderItems ??= new ListBuilder<DocumentReference<Object>>();
  set orderItems(ListBuilder<DocumentReference<Object>> orderItems) =>
      _$this._orderItems = orderItems;

  ListBuilder<DocumentReference<Object>> _orderItemsTest;
  ListBuilder<DocumentReference<Object>> get orderItemsTest =>
      _$this._orderItemsTest ??= new ListBuilder<DocumentReference<Object>>();
  set orderItemsTest(ListBuilder<DocumentReference<Object>> orderItemsTest) =>
      _$this._orderItemsTest = orderItemsTest;

  bool _delivered;
  bool get delivered => _$this._delivered;
  set delivered(bool delivered) => _$this._delivered = delivered;

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
  String get paymentInitId => _$this._paymentInitId;
  set paymentInitId(String paymentInitId) =>
      _$this._paymentInitId = paymentInitId;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  OrdersRecordBuilder() {
    OrdersRecord._initializeBuilder(this);
  }

  OrdersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userOrder = $v.userOrder;
      _driverForOrder = $v.driverForOrder;
      _pickedUpByDriver = $v.pickedUpByDriver;
      _orderTotal = $v.orderTotal;
      _storeOrderdFrom = $v.storeOrderdFrom;
      _deliveryFee = $v.deliveryFee;
      _timePickedUp = $v.timePickedUp;
      _timeDelivered = $v.timeDelivered;
      _orderItems = $v.orderItems?.toBuilder();
      _orderItemsTest = $v.orderItemsTest?.toBuilder();
      _delivered = $v.delivered;
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _paymentInitId = $v.paymentInitId;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrdersRecord;
  }

  @override
  void update(void Function(OrdersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersRecord build() => _build();

  _$OrdersRecord _build() {
    _$OrdersRecord _$result;
    try {
      _$result = _$v ??
          new _$OrdersRecord._(
              userOrder: userOrder,
              driverForOrder: driverForOrder,
              pickedUpByDriver: pickedUpByDriver,
              orderTotal: orderTotal,
              storeOrderdFrom: storeOrderdFrom,
              deliveryFee: deliveryFee,
              timePickedUp: timePickedUp,
              timeDelivered: timeDelivered,
              orderItems: _orderItems?.build(),
              orderItemsTest: _orderItemsTest?.build(),
              delivered: delivered,
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              paymentInitId: paymentInitId,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'orderItems';
        _orderItems?.build();
        _$failedField = 'orderItemsTest';
        _orderItemsTest?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrdersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
