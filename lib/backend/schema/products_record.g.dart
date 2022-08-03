// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductsRecord> _$productsRecordSerializer =
    new _$ProductsRecordSerializer();

class _$ProductsRecordSerializer
    implements StructuredSerializer<ProductsRecord> {
  @override
  final Iterable<Type> types = const [ProductsRecord, _$ProductsRecord];
  @override
  final String wireName = 'ProductsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.productName;
    if (value != null) {
      result
        ..add('Product_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productImage;
    if (value != null) {
      result
        ..add('product_Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productPrice;
    if (value != null) {
      result
        ..add('product_Price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.productBrandName;
    if (value != null) {
      result
        ..add('product_BrandName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productDiscription;
    if (value != null) {
      result
        ..add('product_discription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storeProduct;
    if (value != null) {
      result
        ..add('store_product')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.storeProductQuantity;
    if (value != null) {
      result
        ..add('Store_product_Quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  ProductsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Product_name':
          result.productName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'product_Image':
          result.productImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'product_Price':
          result.productPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'product_BrandName':
          result.productBrandName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'product_discription':
          result.productDiscription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'store_product':
          result.storeProduct = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Store_product_Quantity':
          result.storeProductQuantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$ProductsRecord extends ProductsRecord {
  @override
  final String productName;
  @override
  final String productImage;
  @override
  final int productPrice;
  @override
  final String productBrandName;
  @override
  final String productDiscription;
  @override
  final DocumentReference<Object> storeProduct;
  @override
  final int storeProductQuantity;
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

  factory _$ProductsRecord([void Function(ProductsRecordBuilder) updates]) =>
      (new ProductsRecordBuilder()..update(updates))._build();

  _$ProductsRecord._(
      {this.productName,
      this.productImage,
      this.productPrice,
      this.productBrandName,
      this.productDiscription,
      this.storeProduct,
      this.storeProductQuantity,
      this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.reference})
      : super._();

  @override
  ProductsRecord rebuild(void Function(ProductsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductsRecordBuilder toBuilder() =>
      new ProductsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductsRecord &&
        productName == other.productName &&
        productImage == other.productImage &&
        productPrice == other.productPrice &&
        productBrandName == other.productBrandName &&
        productDiscription == other.productDiscription &&
        storeProduct == other.storeProduct &&
        storeProductQuantity == other.storeProductQuantity &&
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
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            0,
                                                            productName
                                                                .hashCode),
                                                        productImage.hashCode),
                                                    productPrice.hashCode),
                                                productBrandName.hashCode),
                                            productDiscription.hashCode),
                                        storeProduct.hashCode),
                                    storeProductQuantity.hashCode),
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
    return (newBuiltValueToStringHelper(r'ProductsRecord')
          ..add('productName', productName)
          ..add('productImage', productImage)
          ..add('productPrice', productPrice)
          ..add('productBrandName', productBrandName)
          ..add('productDiscription', productDiscription)
          ..add('storeProduct', storeProduct)
          ..add('storeProductQuantity', storeProductQuantity)
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

class ProductsRecordBuilder
    implements Builder<ProductsRecord, ProductsRecordBuilder> {
  _$ProductsRecord _$v;

  String _productName;
  String get productName => _$this._productName;
  set productName(String productName) => _$this._productName = productName;

  String _productImage;
  String get productImage => _$this._productImage;
  set productImage(String productImage) => _$this._productImage = productImage;

  int _productPrice;
  int get productPrice => _$this._productPrice;
  set productPrice(int productPrice) => _$this._productPrice = productPrice;

  String _productBrandName;
  String get productBrandName => _$this._productBrandName;
  set productBrandName(String productBrandName) =>
      _$this._productBrandName = productBrandName;

  String _productDiscription;
  String get productDiscription => _$this._productDiscription;
  set productDiscription(String productDiscription) =>
      _$this._productDiscription = productDiscription;

  DocumentReference<Object> _storeProduct;
  DocumentReference<Object> get storeProduct => _$this._storeProduct;
  set storeProduct(DocumentReference<Object> storeProduct) =>
      _$this._storeProduct = storeProduct;

  int _storeProductQuantity;
  int get storeProductQuantity => _$this._storeProductQuantity;
  set storeProductQuantity(int storeProductQuantity) =>
      _$this._storeProductQuantity = storeProductQuantity;

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

  ProductsRecordBuilder() {
    ProductsRecord._initializeBuilder(this);
  }

  ProductsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productName = $v.productName;
      _productImage = $v.productImage;
      _productPrice = $v.productPrice;
      _productBrandName = $v.productBrandName;
      _productDiscription = $v.productDiscription;
      _storeProduct = $v.storeProduct;
      _storeProductQuantity = $v.storeProductQuantity;
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
  void replace(ProductsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductsRecord;
  }

  @override
  void update(void Function(ProductsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductsRecord build() => _build();

  _$ProductsRecord _build() {
    final _$result = _$v ??
        new _$ProductsRecord._(
            productName: productName,
            productImage: productImage,
            productPrice: productPrice,
            productBrandName: productBrandName,
            productDiscription: productDiscription,
            storeProduct: storeProduct,
            storeProductQuantity: storeProductQuantity,
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
