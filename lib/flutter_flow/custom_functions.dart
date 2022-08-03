import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

int getRunningTotal(
  List<CartItemsRecord> productPrice,
  int index,
) {
  var maxIndex = index;
  if (maxIndex == -1 || index >= productPrice.length) {
    // Pass index of -1 if you want a grand total across all indexes
    maxIndex = productPrice.length - 1;
  }

  var total = 0;
  for (var i = 0; i <= maxIndex; i++) {
    total += productPrice[i].price *
        productPrice[i]
            .quantity; // Todo: replace "test" with the field you want to do a running total on
  }

  return total;
}

int productTotal(
  int quantity,
  int price,
) {
  var productTotals = price * quantity;
  return productTotals;
}

int productTotalCopy(
  int quantity,
  int price,
  int cartProductIndex,
  List<CartItemsRecord> cart,
) {
  var maxIndex = cartProductIndex;
  if (maxIndex == -1 || cartProductIndex >= cart.length) {
    // Pass index of -1 if you want a grand total across all indexes
    maxIndex = cart.length - 1;
  }
  var productTotals = price * quantity;
  return productTotals;
}
