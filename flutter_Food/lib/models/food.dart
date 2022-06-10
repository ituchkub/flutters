class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  double distance;
  double score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool hightLight;

  Food(
      this.imgUrl,
      this.desc,
      this.name,
      this.waitTime,
      this.distance,
      this.score,
      this.cal,
      this.price,
      this.quantity,
      this.ingredients,
      this.about,
      {this.hightLight = false});

  static List<Food> generateRecoomendFoods() {
    return [
      (Food(
          'assets/images/dish1.png',
          'No1. in Sales',
          'Soba Soup1',
          '50 Min',
          4.8,
          12,
          '325 kcal',
          12,
          20,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'egg': 'assets/images/ingre3.png'},
            {'Shrimp': 'assets/images/ingre2.png'}
          ],
          'Simply put, ramen is a Japanese',
          hightLight: true)),
      (Food(
          'assets/images/dish2.png',
          'No1. in Sales',
          'Soba Soup2',
          '50 Min',
          4.8,
          12,
          '325 kcal',
          12,
          20,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'egg': 'assets/images/ingre3.png'},
            {'Shrimp': 'assets/images/ingre2.png'}
          ],
          'Simply put, ramen is a Japanese',
          hightLight: true)),
      (Food(
          'assets/images/dish3.png',
          'No1. in Sales',
          'Soba Soup3',
          '50 Min',
          4.8,
          12,
          '325 kcal',
          12,
          20,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'egg': 'assets/images/ingre3.png'},
            {'Shrimp': 'assets/images/ingre2.png'}
          ],
          'Simply put, ramen is a Japanese',
          hightLight: true))
    ];
  }
}
