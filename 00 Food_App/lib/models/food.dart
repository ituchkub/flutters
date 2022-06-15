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
            {'แป้ง': 'assets/images/in01.png'},
            {'งาขาว': 'assets/images/in03.png'},
             {'น้ำตาล': 'assets/images/in04.png'},
          ],
          '     ขนมวง เป็นขนมโบราณของชาวไทใหญ่ ทำขึ้นเพื่องานบุญ มีรูปร่างรูปร่างหน้าตาคล้ายกำไลหรือโดนัท ชุบด้วยน้ำตาลเคี่ยว โดยการคีบขนมวงชุบน้ำตาลอ้อยให้เคลือบทั่วด้านหนึ่ง วางพักให้เย็น น้ำตาลอ้อยจะเป็นเงาสวย',
          hightLight: true)),
      (Food(
          'assets/images/dish2.png',
          'ขายดี No.2',
          'ขนมลูกตุยงาดำ',
          ' 5-10 Min',
          4.8,
          5,
          ' 100 kcal',
          "20",
          20,
          [
          {'แป้ง': 'assets/images/in01.png'},
            {'งาดำ': 'assets/images/in02.png'},
             {'น้ำตาล': 'assets/images/in04.png'},
          ],
            '     ขนมลูกตุย บางคนก็เรียก ขนมไข่เต่า หรือไข่นก ทำจากแป้งข้าวเหนียว ถั่วซีกกวนกับน้ำตาล คลุกด้วยงาดำหรืองาขาวก็ได้ ทอดจนเหลือง  จะมีรสชาติหวาน กรอบนอก นุ่มใน กินตอนร้อนๆ บอกเลยฟินสุดๆ',
          hightLight: true)),
      (Food(
          'assets/images/dish4.png',
          'ขายดี No.3',
          'ขนมลูกตุยงาขาว',
          ' 5-10 Min',
          4.8,
          5,
          ' 100 kcal',
          "20",
          20,
          [
           {'แป้ง': 'assets/images/in01.png'},
            {'งาขาว': 'assets/images/in03.png'},
            {'น้ำตาล': 'assets/images/in04.png'},
          ],
          '     ขนมลูกตุย บางคนก็เรียก ขนมไข่เต่า หรือไข่นก ทำจากแป้งข้าวเหนียว ถั่วซีกกวนกับน้ำตาล คลุกด้วยงาดำหรืองาขาวก็ได้ ทอดจนเหลือง  จะมีรสชาติหวาน กรอบนอก นุ่มใน กินตอนร้อนๆ บอกเลยฟินสุดๆ',
          hightLight: true)),
      (Food(
          'assets/images/dish3.png',
          'ขายดี No.4',
          'ขนมไข่หงส์',
          ' 5-10 Min',
          4.8,
          5,
          ' 100 kcal',
          "20",
          20,
          [
           {'แป้ง': 'assets/images/in01.png'},
            {'น้ำตาล': 'assets/images/in04.png'},
            {'ถั่วเขียว': 'assets/images/in05.png'}
          ],
          '     ไข่หงส์ เป็นขนมไทยโบราญที่สืบทอดกันมาเป็นรุ่นสู่รุ่นมาอย่างยาวนาน ขนมไข่หงส์ทำมาจาก แป้งข้าวเหนียว สอดไส้ถั่วเขียวซีก เกลือ หอมแดง แล้วนำมาทอดจนเหลืองกรอบ รสชาติก็จะเค็มหวานผสมกลมกลืนกันลงตัว',
          hightLight: true))
    ];
  }
}
