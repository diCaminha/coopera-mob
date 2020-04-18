import 'package:flutter/widgets.dart';

enum TypeProduct {
  PLANNER,
  BLOCO_NOTAS
}

class Product {

  final String id;
  final String title;
  final String description;
  final TypeProduct type;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.type,
    @required this.price,
    @required this.imageUrl,
    this.isFavorite
  });
}