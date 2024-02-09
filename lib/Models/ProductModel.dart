import 'dart:ffi';

import 'package:dencoffee_app/Models/ExtrasModel.dart';

class ProductModel{
  late int id;
  late String name;
  late int price;
  late String description;
  late String size;
  late String image;
  late String tags;
  late List<ExtrasModel> extras;
  late int qty;

  ProductModel(
      int id,
      String name,
      int price,
      String description,
      String size,
      String image,
      String tags,
      List<ExtrasModel> extras,
      int qty
      ){
    this.id = id;
    this.name = name;
    this.price = price;
    this.description = description;
    this.size = size;
    this.image = image;
    this.tags = tags;
    this.extras = extras;
    this.qty = qty;
  }

}