import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class VersionInfo {
  final String? product, version, isReleased, initial;
  final int? percentage;
  final Color? color;

  VersionInfo({
    this.product,
    this.initial,
    this.version,
    this.isReleased,
    this.percentage,
    this.color,
  });
}

List demoVersionInfo = [
  VersionInfo(
    product: 'Online Banking',
    initial: 'OB',
    version: '3.3.0.0',
    isReleased: 'Released',
    percentage: 100,
    color: primaryColor,
  ),
  VersionInfo(
    product: 'Online Banking',
    initial: 'OB',
    version: '3.3.1.0',
    isReleased: 'Released',
    percentage: 100,
    color: primaryColor,
  ),
  VersionInfo(
    product: 'Online Banking',
    initial: 'OB',
    version: '3.3.2.0',
    isReleased: 'Released',
    percentage: 100,
    color: primaryColor,
  ),
  VersionInfo(
    product: 'Online Banking',
    initial: 'OB',
    version: '3.4.0.0',
    isReleased: 'In Dev',
    percentage: 60,
    color: primaryColor,
  ),
];
