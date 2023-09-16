import 'package:flutter/material.dart';

class ShapeCategory {
  final String shapeText;
  final String shapeImage;
  final Function() shapeOnTap;
  final Color shapeColor;

  const ShapeCategory(
      {required this.shapeText,
      required this.shapeImage,
      required this.shapeOnTap,
      required this.shapeColor});
}
