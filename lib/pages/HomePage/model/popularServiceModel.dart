import 'package:flutter/material.dart';

class PopularServiceModel {
  final String imageUrl;
  final String serviceTitle;
  final double priceRange;

  PopularServiceModel({
      @required this.imageUrl,
      @required this.serviceTitle,
      @required this.priceRange
      });
}
