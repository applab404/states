import 'package:flutter/material.dart';

class CatalogItem {
  final int id;
  final String name;
  final MaterialColor color;
  bool isAddedToCart = false;

  CatalogItem({required this.id, required this.name, this.color = Colors.grey});

  void cartAction() {
    isAddedToCart = !isAddedToCart;
  }
}
