class RecipeModel {
  final String name;
  final String images;
  final String totalTime;
  final double rating;

  RecipeModel({
    required this.name,
    required this.images,
    required this.totalTime,
    required this.rating,
  });

  factory RecipeModel.fromJson(dynamic json) {
    return RecipeModel(
        name: json['name'] as String,
        images: json['images'][0]['hostedLargeUrl'] as String,
        totalTime: json['totalTime'] as String,
        rating: json['rating'] as double);
  }

  static List<RecipeModel> recipeSnapShot(List snapShot) {
    return snapShot.map(
      (data) {
        return RecipeModel.fromJson(data);
      },
    ).toList();
  }

  @override
  String toString(){
    return 'Recipe {name: $name, image: $images, rating: $rating, totalTime: $totalTime}';
  }
}
