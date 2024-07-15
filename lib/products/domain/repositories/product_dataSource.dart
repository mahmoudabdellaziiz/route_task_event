import 'package:dartz/dartz.dart';
import 'package:route_task_event/products/data/data_sources/product_dataSource_impl.dart';
import 'package:route_task_event/products/data/models/ProductResponseDTO.dart';

abstract class ProductDataSource {
  Future<Either<BaseError, ProductResponseDto>> getProducts();
}
