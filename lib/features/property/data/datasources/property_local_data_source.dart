import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/property_model.dart'

abstract class PropertyLocalDataSource {
  Future<List<PropertyModel>> getProperties();
}

class PropertyLocalDataSourceImpl implements PropertyLocalDataSource{
  @override
  Future<List<PropertyModel>> getProperties() async {

    // Load the JSON file from assets
    final String jsonString = await rootBundle.loadString('assets/properties.json');

    // Decode JSON
    final List<dynamic> jsonList = json.decode(jsonString);

    // Map JSON to PropertyModel
    final List <PropertyModel> properties = jsonList
      .map((jsonItem) => PropertyModel.fromJson(jsonItem))
      .toList();
    
    return properties;

  }
}