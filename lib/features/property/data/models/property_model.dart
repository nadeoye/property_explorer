class PropertyModel {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double pricePerNight;
  final String location;
  final double rating;
  final List<String> availableDates;


  PropertyModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.pricePerNight,
    required this.location,
    required this.rating,
    required this.availableDates,
  });

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