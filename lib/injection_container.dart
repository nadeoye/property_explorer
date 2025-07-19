import 'package:get_it/get_it.dart';

import 'features/property/data/datasources/property_local_data_source.dart';
import 'features/property/data/repositories/property_repository_impl.dart';
import 'features/property/domain/repositories/property_repository.dart';
import 'features/property/domain/usecases/get_all_properties.dart';
import 'features/property/domain/usecases/get_property_by_id.dart';
import 'features/property/presentation/bloc/property_bloc.dart';

final sl = GetIt.instance; //sl = service locator

Future<void> init() async {
  // Use Cases
  sl.registerLazySingleton(() => GetAllProperties(sl()));
  sl.registerLazySingleton(() => GetPropertyById(sl()));

  //Repository
  sl.registerLazySingleton<PropertyRepository>(() => PropertyRepositoryImpl(localDataSource: sl()),
  );

  //Data Source 
  sl.registerLazySingleton<PropertyLocalDataSource>(() => PropertyLocalDataSourceImpl(),
  );


  sl.registerFactory(() => PropertyBloc(
    getAllProperties: sl(),
    getPropertyById: sl(),
  ));
}