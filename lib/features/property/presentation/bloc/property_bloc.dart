import 'package:flutter_bloc/flutter_bloc.dart';
import 'property_event.dart';
import 'property_state.dart';
import '../../domain/usecases/get_all_properties.dart';
import '../../domain/usecases/get_property_by_id.dart';

class PropertyBloc extends Bloc<PropertyEvent, PropertyState>{
  final GetAllProperties getAllProperties;
  final GetPropertyById getPropertyById;

  PropertyBloc({
    required this.getAllProperties,
    required this.getPropertyById,
  }) :super(PropertyInitial()) {
    on<GetAllPropertiesEvent>(_onGetAllProperties);
    on<GetPropertyByIdEvent>(_onGetPropertyById);
  }

  void _onGetAllProperties(
    GetAllPropertiesEvent event,
    Emitter<PropertyState> emit,
  ) async {
    emit(PropertyLoading());
    try {
      final properties = await getAllProperties();
      emit(PropertyLoaded(properties));
    } catch (e) {
      emit(PropertyError("Failed to load properties"));
    }
  }

  void _onGetPropertyById(
    GetPropertyByIdEvent event,
    Emitter<PropertyState> emit,
  ) async {
    emit(PropertyLoading());
    try {
      final property = await getPropertyById(event.id);
      emit(PropertyDetailLoaded(property));
    } catch(e) {
      emit(PropertyError("Failed to load property details"));
    }
  }
}