import 'package:slash_test/home/domain/entities/products.dart';
import 'package:slash_test/home/domain/repositories/products_repo.dart';

class GetRecommendedForYouProductsUseCase {
  final BaseProductsRepo productsRepo;

  GetRecommendedForYouProductsUseCase({required this.productsRepo});

  Future<List<Product>> getRecommendedForYouProductsUseCase() async {
    return await productsRepo.getRecommendedForYouProducts();
  }
}
