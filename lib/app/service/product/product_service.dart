import 'dart:math';

import 'package:mytest/app/modules/screens/home/modules/product_model.dart';


class ProductService {
  Future<List<Product>> getAllProduct() async {
    List<Product> list = [];
    

    for (int index = 1; index <= 10; index++) {
      list.add(Product(
          name: "${index}",
          mark: "NEW",
          mark1: "SALE -40",
          price: Random().nextInt(1000).toDouble(),
          image: "assets/product/img${index}.jpeg",
          image1: "assets/product1/img${index}.jpeg",
          image2: "assets/product2/img${index}.jpeg",
          selected: false));
    }
    return list;
  }
}