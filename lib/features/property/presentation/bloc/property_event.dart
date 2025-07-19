import 'package:equatable/equatable.dart';

abstract class PropertyEvent extends Equatable {
  const PropertyEvent();

  @override
  List<Object?> get props => [];
  
}

class GetAllPropertiesEvent extends PropertyEvent{}

class GetPropertyByIdEvent extends PropertyEvent{
  final String id;

  const GetPropertyByIdEvent(this.id);

  @override
  List<Object?> get props => [id];
  
}