import 'package:flutter/material.dart';
import 'package:kostapp/themekost.dart';

class City {
  int id;
  String name;
  String imageUrl;
  bool isPopular;

  City(
      {required this.id,
      required this.imageUrl,
      required this.name,
      this.isPopular = false});
}
