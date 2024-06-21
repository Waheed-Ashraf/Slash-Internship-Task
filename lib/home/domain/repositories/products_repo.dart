import 'package:slash_test/home/domain/entities/products.dart';

abstract class BaseProductsRepo {
  Future<List<Product>> getBestSellingProducts();
  Future<List<Product>> getNewArrivalProducts();
  Future<List<Product>> getRecommendedForYouProducts();
}
