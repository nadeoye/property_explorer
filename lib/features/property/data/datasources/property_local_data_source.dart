import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/property_model.dart'

abstract class PropertyLocalDataSource {
  Future<List<PropertyModel>> getAllProperties();
  Future<PropertyModel> getPropertyById(String id);
}

class PropertyLocalDataSourceImpl implements PropertyLocalDataSource{
  @override
  Future<List<PropertyModel>> getAllProperties() async {

    // Load the JSON file from assets
    final String jsonString = await rootBundle.loadString('assets/data/properties.json');

    // Decode JSON
    final List<dynamic> decodedJson = json.decode(jsonString);
    return decodedJson.map((json) => PropertyModel.fromJson(json)).toList();

  }

  @override
  Future<PropertyModel> getPropertyById(String id) async{
    final allProperties = await getAllProperties();
    return allProperties.firstWhere((Property) => property.id == id);
  }
}