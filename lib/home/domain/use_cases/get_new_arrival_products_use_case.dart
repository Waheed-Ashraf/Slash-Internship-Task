import 'package:slash_test/home/domain/entities/products.dart';
import 'package:slash_test/home/domain/repositories/products_repo.dart';

class GetNewArrivalProductsUseCase {
  final BaseProductsRepo productsRepo;

  GetNewArrivalProductsUseCase({required this.productsRepo});

  Future<List<Product>> getNewArrivalProductsUseCase() async {
    return await productsRepo.getNewArrivalProducts();
  }
}
