import '../../domain/entities/property.dart';

class PropertyModel extends Property{
  
  PropertyModel({
    required String id,
    required String title,
    required String description,
    required String imageUrl,
    required double pricePerNight,
    required String location,
    required double rating,
    required List<String> availableDates,
  }): super(

    id: id,
    title: title,
    imageUrl: imageUrl,
    location: location,
    pricePerNight: pricePerNight,
    rating: rating,
    description: description,
    availableDates: availableDates,  
     
  );

  factory PropertyModel.fromJson(Map<String, dynamic> json) {
    return PropertyModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      pricePerNight: (json['pricePerNight'] as num).toDouble(),
      location: json['location'],
      rating: (json['rating'] as num).toDouble(),
      availableDates: List<String>.from(json['availableDates']),

    );
  }

}