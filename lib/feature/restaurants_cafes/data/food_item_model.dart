class FoodItemModel {
  final String image;
  final String title;
  final String price;
  final String category;

  FoodItemModel({
    required this.image,
    required this.title,
    required this.price,
    this.category = 'Healthy Food',
  });
}