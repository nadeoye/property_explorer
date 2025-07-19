import '../entities/property.dart';
import '../repositories/property_repository.dart';

class GetPropertyById {
  final PropertyRepository repository;

  GetPropertyById(this.repository);

  Future<Property> call(String id) async {
    return await repository.getPropertyById(id);
  }
}