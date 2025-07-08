import '../entities/property.dart';
import '../repositories/property_repository.dart';

class GetAllProperties {
  final PropertyRepository repository;

  GetAllProperties(this.repository);

  Future<List<Property>> call() async{
    return await repository.getAllProperties();
  }
}