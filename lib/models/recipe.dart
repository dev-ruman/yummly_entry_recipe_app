class Recipe {
  final String name;
  final String images;
  final double rating;
  final String totalTime;
  Recipe(
      {required this.images,
      required this.rating,
      required this.totalTime,
      required this.name});

  factory Recipe.fromJson(dynamic json) {
    return Recipe(
        images: json['images'][0]['hostedLargeUrl'] as String,
        rating: json['rating'] as double,
        totalTime: json['totalTime'] as String,
        name: json['name'] as String);
  }
  static List recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Recipe {name: $name, images: $images, totalTime: $totalTime, rating: $rating}';
  }
}
