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
    return Restaurant(
        'ขนมวงแม่เงา.',
        '5-10 min',
        '2.4 k',
        'ร้านขนมไทย',
        'assets/images/res_logo.png',
        'ขนมไทยๆ อร่อยถูกใจ สดใหม่ทุกวัน !',
        4.8, {
      'เมนูแนะนำ': Food.generateRecoomendFoods(),
      'ขนมไทย': Food.generateRecoomendFoods(),
      'น้ำสมุนไพร': [],
      //'อื่น ๆ': Food.generateRecoomendFoods(),
    });
  }
}
