import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GoogleMatrixCall {
  static Future<ApiCallResponse> call({
    String origins = '',
    String destinations = '',
    String key = 'AIzaSyB3mZydbtv4xhgS9B9NYixurQkErYxcQW8',
    String units = 'imperial',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Google Matrix',
      apiUrl: 'https://maps.googleapis.com/maps/api/distancematrix/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'origins': origins,
        'destinations': destinations,
        'key': key,
        'units': units,
      },
      returnBody: true,
    );
  }
}

class StripeInitPaymentCall {
  static Future<ApiCallResponse> call({
    int amount,
    String currency = 'USD',
    String onBehalfOf = '',
    String description = '',
    // int applicationFeeAmount,
    // String transferData = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Stripe init Payment',
      apiUrl: 'https://api.stripe.com/v1/payment_intents',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer  sk_test_51KgurfB76m2cyulrnjsu0VagzLzHM6EzUUNejSnFaHHwuyGOS1KOoo9OapYxtVAZNQdj3aByV3lSkFYID0fRwCXF00hJrV020Y',
      },
      params: {
        'amount': amount,
        'currency': currency,
        'on_behalf_of': onBehalfOf,
        'description': description,
        // 'application_fee_amount': applicationFeeAmount,
        // 'transfer_data': transferData,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}

class CreatePaymentMethodCall {
  static Future<ApiCallResponse> call({
    String type = 'card',
    String cardNumber = '',
    String cardExpMonth = '',
    String cardExpYear = '',
    int cardCvc,
  }) {
    final body = '''
{
  "type": "$type",
  "card[number]": "$cardNumber",
  "card[exp_month]": "$cardExpMonth",
  "card[exp_year]": "$cardExpYear",
  "card[cvc]": "$cardCvc"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create payment method',
      apiUrl: ' https://api.stripe.com/v1/payment_methods',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer  sk_test_51KgurfB76m2cyulrnjsu0VagzLzHM6EzUUNejSnFaHHwuyGOS1KOoo9OapYxtVAZNQdj3aByV3lSkFYID0fRwCXF00hJrV020Y',
      },
      params: {
        'type': type,
        'card.number': cardNumber,
        'card.exp_month': cardExpMonth,
        'card.exp_year': cardExpYear,
        'card.cvc': cardCvc,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class StripeAddCustomersCall {
  static Future<ApiCallResponse> call({
    String email = '',
    String name = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'stripe add customers',
      apiUrl: 'https://api.stripe.com/v1/customers',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer  sk_test_51KgurfB76m2cyulrnjsu0VagzLzHM6EzUUNejSnFaHHwuyGOS1KOoo9OapYxtVAZNQdj3aByV3lSkFYID0fRwCXF00hJrV020Y',
      },
      params: {
        'email': email,
        'Name': name,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}

class StripeAddNewMerchent {
  static Future<ApiCallResponse> call({
    String email = '',
    String storeName = '',
    String businessName = '',
    String city = '',
    String state = '',
    String country = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'stripe add business',
      apiUrl: 'https://api.stripe.com/v1/accounts',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer  sk_test_51KgurfB76m2cyulrnjsu0VagzLzHM6EzUUNejSnFaHHwuyGOS1KOoo9OapYxtVAZNQdj3aByV3lSkFYID0fRwCXF00hJrV020Y',
      },
      params: {
        'type': 'express',
        'email': email,
        'businessName': storeName,
        'city': city,
        'state': state,
        'country': country,
        'business_type': 'company',
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}

class StripeAddNewDriver {
  static Future<ApiCallResponse> call(
      {String email = '',
      String driverName = '',
      String businessName = '',
      String address = '',
      String city = '',
      String state = '',
      String country = '',
      String zipCode = ''}) {
    return ApiManager.instance.makeApiCall(
      callName: 'stripe add business',
      apiUrl: 'https://api.stripe.com/v1/accounts',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer  sk_test_51KgurfB76m2cyulrnjsu0VagzLzHM6EzUUNejSnFaHHwuyGOS1KOoo9OapYxtVAZNQdj3aByV3lSkFYID0fRwCXF00hJrV020Y',
      },
      params: {
        'type': 'express',
        'email': email,
        'businessName': driverName,
        'city': city,
        'state': state,
        'country': country,
        'business_type': 'individual',
        'individual.address': address,
        'individual.address.city': city,
        'individual.address.postal_code': zipCode,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}

class GetUserPaymentMethode {
  static Future<ApiCallResponse> call({
    String customerId = '',
  }) {
    return ApiManager.instance.makeApiCall(
        callName: 'GetUserPaymentMethod',
        apiUrl:
            'https://api.stripe.com/v1/customers/$customerId/payment_methods',
        callType: ApiCallType.GET,
        headers: {
          'Authorization':
              'Bearer  sk_test_51KgurfB76m2cyulrnjsu0VagzLzHM6EzUUNejSnFaHHwuyGOS1KOoo9OapYxtVAZNQdj3aByV3lSkFYID0fRwCXF00hJrV020Y',
        },
        params: {customerId: customerId},
        bodyType: BodyType.JSON,
        returnBody: true);
  }
}
