import 'package:slash_test/home/domain/entities/products.dart';

class ProductModel extends Product {
  ProductModel(
      {required super.id,
      required super.name,
      required super.price,
      required super.image});
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'image': image,
    };
  }
}
