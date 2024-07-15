import 'package:get_it/get_it.dart';
import 'package:route_task_event/products/data/data_sources/product_dataSource_impl.dart';
import 'package:route_task_event/products/data/repositories/product_repository_impl.dart';
import 'package:route_task_event/products/domain/repositories/product_dataSource.dart';
import 'package:route_task_event/products/domain/repositories/product_repository.dart';
import 'package:route_task_event/products/domain/use_cases/product_useCases.dart';
import 'package:route_task_event/products/presentation/cubit/cubit.dart';

var sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => ProductCubit());
  sl.registerLazySingleton(() => ProductUseCases());
  sl.registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl());
  sl.registerLazySingleton<ProductDataSource>(() => ProductDataSourceImpl());
}
