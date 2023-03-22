import 'dart:convert';

import 'package:flutter/material.dart';

extension ImagePathExtension on String {
  String get toSVG => "assets/svg/$this.svg";
}

extension CostExtension on String {
  String get toAmount => "₹$this";
}

extension PercentageExtention on String {
  String get toPercentage => "$this%";
}

extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}

extension Json on dynamic {
  String get toJson {
    JsonEncoder encoder = const JsonEncoder.withIndent('  ');
    String prettyprint = encoder.convert(this);
    return prettyprint;
  }
}
extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
extension Colour on String {
  Color get toColor {
    var hexColor = this;
    hexColor = hexColor.replaceAll("#", "");

    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
      return Color(int.parse("0x$hexColor"));
    }

    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }

    return const Color(0xFFFFFFFF);
  }
}
