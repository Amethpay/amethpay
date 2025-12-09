import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? newCustomFunction() {
  final now = DateTime.now();
  final randomPart = (100000 + (now.millisecondsSinceEpoch % 900000))
      .toString(); // Gera tres número aleatório de 6 dígitos baseado no timestamp
  final accountNumber = 'IBAN PL61119012146187300010$randomPart';
  return accountNumber;
}

String? newCustomFunctionDollar() {
  final now = DateTime.now();
  final randomPart = (100000 + (now.millisecondsSinceEpoch % 900000))
      .toString(); // Gera tres número aleatório de 6 dígitos baseado no timestamp
  final accountNumber = 'IBAN PL61119012146187300030$randomPart';
  return accountNumber;
}

String? newCustomFunctionEuro() {
  final now = DateTime.now();
  final randomPart = (100000 + (now.millisecondsSinceEpoch % 900000))
      .toString(); // Gera tres número aleatório de 6 dígitos baseado no timestamp
  final accountNumber = 'IBAN PL61119012146187300020$randomPart';
  return accountNumber;
}

String? convertCurrency(
  String? texto,
  bool prefixoS,
) {
  if (texto == null) return null;

  final apenasNumeros = texto.replaceAll(RegExp(r'[^0-9]'), '');
  final numero = int.parse(apenasNumeros);

  final formatador = NumberFormat.currency(
    locale: 'pt_BR', // Usa vírgula como decimal e ponto como milhar
    symbol: '', // Remove qualquer símbolo de moeda
    decimalDigits: 2,
  );

  String valorFormatado = formatador.format(numero / 100);

  if (prefixoS) {
    valorFormatado = '\$ $valorFormatado'; // Adiciona o símbolo $ antes
  }

  return valorFormatado;
}

String? formatCrypto8Decimals(
  double? value,
  String? symbol,
) {
  if (value == null || value == 0) {
    // Exibe 0,00 para nulo ou zero
    final zeroFormatter = NumberFormat.decimalPattern('pt_BR')
      ..minimumFractionDigits = 2
      ..maximumFractionDigits = 2
      ..turnOffGrouping();
    return '${symbol ?? ''} ${zeroFormatter.format(0)}';
  }

  // Valor diferente de zero → com 8 casas decimais
  final formatter = NumberFormat.decimalPattern('pt_BR')
    ..minimumFractionDigits = 8
    ..maximumFractionDigits = 8
    ..turnOffGrouping();

  final formattedValue = formatter.format(value);

  return '${symbol ?? ''} $formattedValue';
}
