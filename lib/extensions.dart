import 'package:flutter/material.dart';

extension TimeX on TimeOfDay {
  double toDouble() => hour + minute / 60.0;
  bool isAfter(TimeOfDay other) => toDouble() > other.toDouble();
  bool isAfterNow() => isAfter(TimeOfDay.now());
}
