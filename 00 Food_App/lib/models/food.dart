class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  double distance;
  double score;
  String cal;
  String price;
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
          'ขายดี No.1',
          'ขนมวงแม่เงา',
          ' 5-10 Min',
          4.8,
          5,
          ' 100 kcal',
          "20",
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
          'ขายดี No.2',
          'ลูกตุยงาดำ',
          ' 5-10 Min',
          4.8,
          5,
          ' 100 kcal',
          "20",
          20,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'egg': 'assets/images/ingre3.png'},
            {'Shrimp': 'assets/images/ingre2.png'}
          ],
          'Simply put, ramen is a Japanese',
          hightLight: true)),
      (Food(
          'assets/images/dish4.png',
          'ขายดี No.3',
          'ลูกตุยงาขาว',
          ' 5-10 Min',
          4.8,
          5,
          ' 100 kcal',
          "20",
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
          'ขายดี No.4',
          'ไข่หงส',
          ' 5-10 Min',
          4.8,
          5,
          ' 100 kcal',
          "20",
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
