import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

class Product {
  Product({
     this.name,
     this.mark,
     this.mark1,
     this.price,
     this.description,
     this.image,
     this.image1,
     this.image2,
     this.selected,
  });

  String name;
  String mark;
  String mark1;
  double price;
  String description;
  String image;
  String image1;
  String image2;
  bool selected;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        name: json["name"],
        mark:json["mark"],
        mark1:json["mark"],
        price: json["price"],
        description: json["description"],
        image: json["image"],
        image1: json["image"],
        image2: json["image"],
        selected: json["selected"].obs,
      );
}