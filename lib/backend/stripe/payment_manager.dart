import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import '../../flutter_flow/flutter_flow_util.dart';

import '../cloud_functions/cloud_functions.dart';

final _isProd = false;

// Stripe Credentials
const _kProdStripePublishableKey =
    'pk_live_51KgurfB76m2cyulrtixs3Zl6xaowltcDNwooAyKUXNVzRP1Goa8TR1lwmzHZFWtDnKBKcv2pgNIfqHHsVYDCz7Ox00PMXRgdYK';
const _kTestStripePublishableKey =
    'pk_test_51KgurfB76m2cyulrwuQQAHJCRNIqP6xkk7whFNlB3V2OJmd2f1MA7fvUuEGcy2mhufzU0D2JcmbNymigxPf9FIZT00Tq0JM8q9';
const _kAppleMerchantId = '';

String stripePublishableKey() =>
    _isProd ? _kProdStripePublishableKey : _kTestStripePublishableKey;
String merchantIdentifier() => isAndroid ? '' : _kAppleMerchantId;

Future initializeStripe() async {
  if (kIsWeb) {
    return;
  }
  Stripe.publishableKey = stripePublishableKey();
  if (merchantIdentifier().isNotEmpty) {
    Stripe.merchantIdentifier = merchantIdentifier();
  }
  await Stripe.instance.applySettings();
}

class StripePaymentResponse {
  const StripePaymentResponse({this.paymentId, this.errorMessage});
  final String paymentId;
  final String errorMessage;
}

Future<StripePaymentResponse> processStripePayment({
  @required num amount,
  @required String currency,
  @required String customerEmail,
  String customerName = '',
  String description = '',
  String onBehalfOf = '',
  String stripeAccountId = '',
  bool allowGooglePay = false,
  bool allowApplePay = false,
  ThemeMode themeStyle = ThemeMode.system,
  Color buttonColor,
}) async {
  if (kIsWeb) {
    return StripePaymentResponse(
      errorMessage: 'Stripe payments not yet supported on web.',
    );
  }
  try {
    final callName = _isProd ? 'initStripePayment' : 'initStripeTestPayment';
    final response = await makeCloudCall(
      callName,
      {
        'amount': amount.round(),
        'currency': currency,
        'email': customerEmail,
        'name': customerName,
        'description': description,
        'on_behalf_of': onBehalfOf,
      },
    );
    final success = response['success'] ?? false;
    if (!success || !response.containsKey('paymentId')) {
      return StripePaymentResponse(
          errorMessage: response['error'] ?? 'Unkown error occured');
    }
    // Initialize the Stripe payment sheet
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: response['paymentIntent'],
        customerEphemeralKeySecret: response['ephemeralKey'],
        customerId: response['customer'],
        merchantDisplayName: 'Luxe Exchange',
        merchantCountryCode: 'usd',
        testEnv: !_isProd,
        googlePay: allowGooglePay,
        applePay: allowApplePay,
        style: themeStyle,
        appearance: PaymentSheetAppearance(
          primaryButton: PaymentSheetPrimaryButtonAppearance(
            colors: PaymentSheetPrimaryButtonTheme(
              light:
                  PaymentSheetPrimaryButtonThemeColors(background: buttonColor),
              dark:
                  PaymentSheetPrimaryButtonThemeColors(background: buttonColor),
            ),
          ),
        ),
      ),
    );
    // Show the payment sheet and confirm payment
    await Stripe.instance.presentPaymentSheet();
    // Return the id of the completed payment to add record in the app.
    return StripePaymentResponse(paymentId: response['paymentId']);
  } catch (e) {
    if (e is StripeException && e.error.code == FailureCode.Canceled) {
      return StripePaymentResponse();
    }
    return StripePaymentResponse(errorMessage: '$e');
  }
}
