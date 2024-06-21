import 'package:slash_test/home/domain/entities/products.dart';
import 'package:slash_test/home/domain/repositories/products_repo.dart';

class GetBestSellingProductsUseCase {
  final BaseProductsRepo productsRepo;

  GetBestSellingProductsUseCase({required this.productsRepo});
  Future<List<Product>> getBestSellingProductsUseCase() async {
    return await productsRepo.getBestSellingProducts();
  }
}
