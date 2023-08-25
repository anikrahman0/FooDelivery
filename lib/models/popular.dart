
class PopularModel {
  String name;
  String iconPath;
  String price;

  PopularModel({
    required this.name,
    required this.iconPath,
    required this.price,
  });

  static List<PopularModel> getPopular() {
    List<PopularModel> popular = [];
    popular.add(
      PopularModel(
          name: 'Garlic Butter Steak with Asparagus',
          iconPath: 'assets/food5.png',
          price: '\$10'
        ),
    );
    popular.add(
      PopularModel(
        name: 'Chicken Curry with Rice and Salad Mixed Masala',
        iconPath: 'assets/food6.png',
        price: '\$18'
      ),
    );
    return popular;
  }
}
