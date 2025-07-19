import 'package:equatable/equatable.dart';
//import 'package:property_explorer/features/property/data/datasources/property_local_data_source.dart';
import '../../domain/entities/property.dart';

abstract class PropertyState extends Equatable {
  const PropertyState();

  @override 
  List<Object?> get props => [];
}

class PropertyInitial extends PropertyState {}

class PropertyLoading extends PropertyState {}

class PropertyLoaded extends PropertyState {
  final List<Property> properties;

  const PropertyLoaded(this.properties);

  @override
  List<Object?> get props => [properties];
  }

class PropertyDetailLoaded extends PropertyState {
  final Property property;

  const PropertyDetailLoaded(this.property);

  @override
  List<Object?> get props => [property];

  }

class PropertyError extends PropertyState {
  final String message;

  const PropertyError(this.message);

  @override 
  List<Object?> get props => [message];
  }
