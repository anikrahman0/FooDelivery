
class FoodCategoryModel {
  String name;
  String iconPath;
  bool isActive;

  FoodCategoryModel({
    required this.name,
    required this.iconPath,
    required this.isActive,
  });

  static List<FoodCategoryModel> getCategories() {
    List<FoodCategoryModel> category = [];
    category.add(
      FoodCategoryModel(
          name: 'Drink', iconPath: 'assets/drink2.svg', isActive: true),
    );
    category.add(
      FoodCategoryModel(
        name: 'Pizza',
        iconPath: 'assets/pizza2.svg',
        isActive: false
      ),
    );
    category.add(
      FoodCategoryModel(
        name: 'Burger',
        iconPath: 'assets/burger2.svg',
        isActive: false
      ),
    );
    category.add(
      FoodCategoryModel(
        name: 'Donut',
        iconPath: 'assets/donut-chocolate.svg',
        isActive: false
      ),
    );
    return category;
  }
}
