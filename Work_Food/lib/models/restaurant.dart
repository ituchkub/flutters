import 'Food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;

  Restaurant(this.name, this.waitTime, this.distance, this.label, this.logoUrl,
      this.desc, this.score, this.menu);

  static Restaurant gennetateRestaurant() {
    return Restaurant('Restaurant', '20-30 min', '2.4 k', 'Restaurant',
        'assets/images/res_logo.png', 'orange sandwiches is delicious', 4.7, {
      'Recommend': Food.generateRecoomendFoods(),
      'Popular': Food.generateRecoomendFoods(),
      'Noodles': Food.generateRecoomendFoods(),
      'Pizza': Food.generateRecoomendFoods(),
    });
  }
}
