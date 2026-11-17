class Movie {
  final String id;
  final String title;
  final String synopsis;
  final String ageRating;
  final String screeningTime;
  final String posterImagePath;
  final double ticketPrice;
  // CONSTRUCTOR
  const Movie({
    required this.id,
    required this.title,
    required this.synopsis,
    required this.ageRating,
    required this.screeningTime,
    required this.posterImagePath,
    required this.ticketPrice,
  });
  // METHODS & GETTERS
  String get formattedPrice => '£${ticketPrice.toStringAsFixed(2)}';
}
