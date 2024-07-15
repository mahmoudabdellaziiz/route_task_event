import 'package:dartz/dartz.dart';
import 'package:route_task_event/core/utils/dependancy_injection.dart';
import 'package:route_task_event/products/data/data_sources/product_dataSource_impl.dart';
import 'package:route_task_event/products/data/models/ProductResponseDTO.dart';
import 'package:route_task_event/products/domain/repositories/product_dataSource.dart';
import 'package:route_task_event/products/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final _api = sl<ProductDataSource>();
  @override
  Future<Either<BaseError, ProductResponseDto>> getProducts() {
    return _api.getProducts();
  }
}
