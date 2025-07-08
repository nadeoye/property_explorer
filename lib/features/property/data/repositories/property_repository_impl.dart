import '../../domain/entities/property.dart';
import '../../domain/repositories/property_repository.dart';
import '../datasources/property_local_data_source.dart';

class PropertyRepositoryImpl implements PropertyRepository {
  final PropertyLocalDataSource localDataSource;

  PropertyRepositoryImpl({required this.localDataSource});

  @override
  Future<List<Property>> getAllProperties() {
    return localDataSource,getAllProperties();
  }

  @override
  Future<Property> getPropertyById(String id) {
    return localDataSource.getPropertyById(id);
  }
}