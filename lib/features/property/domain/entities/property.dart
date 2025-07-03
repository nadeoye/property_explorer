class Property{
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double pricePerNight;
  final String location;
  final double rating;
  final List<String> availableDates;

  Property({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.pricePerNight,
    required this.location,
    required this.rating,
    required this.availableDates,
  });
}