import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:slash_test/home/data/models/product_model.dart';
import 'package:slash_test/home/domain/entities/products.dart';
import 'package:slash_test/home/domain/repositories/products_repo.dart';

class ProductRepImp implements BaseProductsRepo {
  @override
  Future<List<Product>> getBestSellingProducts() async {
    final String response =
        await rootBundle.loadString('assets/dummyData.json');
    final data = await json.decode(response);
    List<ProductModel> bestSellingProducts = [];
    for (var element in data['bestSelling']) {
      bestSellingProducts.add(ProductModel.fromJson(element));
    }
    return bestSellingProducts;
  }

  @override
  Future<List<Product>> getNewArrivalProducts() async {
    final String response =
        await rootBundle.loadString('assets/dummyData.json');
    final data = await json.decode(response);
    List<ProductModel> newArrivalProducts = [];
    for (var element in data['newArrival']) {
      newArrivalProducts.add(ProductModel.fromJson(element));
    }
    return newArrivalProducts;
  }

  @override
  Future<List<Product>> getRecommendedForYouProducts() async {
    final String response =
        await rootBundle.loadString('assets/dummyData.json');
    final data = await json.decode(response);
    List<ProductModel> recommendedForYouProducts = [];
    for (var element in data['recommendedForYou']) {
      recommendedForYouProducts.add(ProductModel.fromJson(element));
    }
    return recommendedForYouProducts;
  }
}
