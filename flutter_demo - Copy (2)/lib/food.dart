class Food {
  String imgUrl;
  String desc;
  String name;  int order;
  String waitTime;
  double distance; 
  double score;
  String cal;
  String price;
    String unit;
    
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool hightLight;


  Food(
      this.imgUrl,
      this.desc,
      this.name,this.order,
      this.waitTime,
      this.distance,
      this.score,
      this.cal,
      this.price,
      this.unit,
      this.quantity,
      this.ingredients,
      this.about,
      {this.hightLight = false});

  static List<Food> generateRecoomendDrink() {
    return [
      (Food(
          'assets/images/w01.png',
          'ขายดี No.1',
          'น้ำอัญชันมะนาว',0,
          ' 5-10 Min',
          4.8,
          5,
          ' 100 kcal',
          "10","แก้ว",
          20,
          [
            {'ดอกอัญชัน': 'assets/images/w01.png'},
            {'เกลือ': 'assets/images/in06.png'},
            {'น้ำตาล': 'assets/images/in04.png'},
          ],
          '      เมื่อนึกถึงอาหาร หรือขนมหวานที่มีสีม่วงอมน้ำเงิน คงหนีไม่พ้น “ดอกอัญชัน” อย่างแน่นอน นอกจากจะให้สีน้ำเงินสวย เพื่อนำมาประกอบอาหาร เช่น ขนมหวานของไทยเราแล้ว ยังมีประโยชน์อีกมากมายของดอกอัญชันที่คุณอาจยังไม่รู้ เพียงแค่น้ำคั้นสด หรือน้ำต้มดอกอัญชันเท่านั้น แต่ให้ผลดีต่อสุขภาพมหาศาลเลยทีเดียว ',
          hightLight: true)),
      Food(
          'assets/images/w02.png',
          'ขายดี No.2',
          'น้ำใบเตยหอม',0,
          ' 5-10 Min',
          4.8,
          5,
          ' 100 kcal',
          "10","แก้ว",
          20,
          [
            {'ใบเตยหอม': 'assets/images/w02.png'},
           {'เกลือ': 'assets/images/in06.png'},
            {'น้ำตาล': 'assets/images/in04.png'},
          ],
          '     เตยเป็นพืชที่คนไทยรู้จักกันเป็นอย่างดีมาตั้งแต่สมัยโบราณแล้ว เพราะได้นำมาใช้ประโยชน์ต่างๆมากมาย โดยเฉพาะส่วนของใบที่เราเรียกว่า ใบเตย จึงทำให้เรียกพืชชนิดนี้ติดปากกันมาจนถึงปัจจุบันว่า “ใบเตย” ',
          hightLight: true),
      Food(
          'assets/images/w03.png',
          'ขายดี No.3',
          'น้ำกระเจียบสด',0,
          ' 5-10 Min',
          4.8,
          5,
          ' 100 kcal',
          "10","แก้ว",
          20,
          [
            {'ดอกกระเจียบสด': 'assets/images/w03.png'},
            {'เกลือ': 'assets/images/in06.png'},
            {'น้ำตาล': 'assets/images/in04.png'},
          ],
          '     กระเจี๊ยบแดงมีสรรพคุณ ลดไขมันในเลือด และยังมีสรรพคุณช่วย ลดความดันสูง รวมทั้งลดความเหนียวข้นของเลือดลง ทำให้การไหลเวียนของโลหิตทั่วร่างกายดีขึ้น ซึ่งก็ช่วยรักษาเส้นเลือดขอดให้ทุเลาลงได้ด้วย ถ้าบริโภคกระเจี๊ยบแดง ต่อเนื่องเป็นเวลา 1 เดือนสามารถลดไขมันในเส้นเลือด น้ำตาลในเลือด ไขมัน คอเลสเตอรอลได้ ',
          hightLight: true),
      Food(
          'assets/images/w04.png',
          'ขายดี No.4',
          'น้ำดอกเก็กฮวย',0,
          ' 5-10 Min',
          4.8,
          5,
          ' 100 kcal',
           "10","แก้ว",
          20,
          [
            {'ดอกเก็กฮวย': 'assets/images/w04.png'},
             {'เกลือ': 'assets/images/in06.png'},
            {'น้ำตาล': 'assets/images/in04.png'},
          ],
          '     "เก๊กฮวย" หรือ "เบญจมาศ" ที่หลายๆ คน มักนิยมนำมาทำ "น้ำเก๊กฮวย" เพื่อใช้ดื่มแก้กระหาย เพิ่มความสดชื่นให้กับร่างกาย ส่วนใหญ่แล้วก็จะนำ "ดอกเก็กฮวย" ไปตากแห้ง แล้วจึงนำมาชงกับน้ำร้อน ส่วนการอบแห้งนอกจากจะนำมาตากแดดแล้ว หากช่วงที่ไม่ค่อยมีแดด ก็มักใช้วิธีแบบพื้นบ้านคือนำ "ดอกเก๊กฮวย" ',
          hightLight: true)
    ];
  }

  static List<Food> generateRecoomendFoods() {
    return [
      (Food(
          'assets/images/dish1.png',
          'ขายดี No.1',
          'ขนมวงแม่เงา',0,
          ' 5-10 Min',
          4.8,
          5,
          ' 100 kcal',
          "20","ชุด",
          20,
          [
            {'แป้ง': 'assets/images/in01.png'},
              {'เกลือ': 'assets/images/in06.png'},
            {'น้ำตาล': 'assets/images/in04.png'},
          ],
          '     ขนมวง เป็นขนมโบราณของชาวไทใหญ่ มีรูปร่างหน้าตาคล้ายกำไลหรือโดนัท ทำจากแป้งข้าวเหนียานวดกับน้ำและมะพร้าวขูด แล้วต่อให้เป็นวงกลม ทอดในน้ำมันให้สุก พอขนมเย็นลงจึงนำไปชุบน้ำตาลอ้อยให้ทั่ว',
          hightLight: true)),
      (Food(
          'assets/images/dish2.png',
          'ขายดี No.2',
          'ขนมลูกตุยงาดำ',0,
          ' 5-10 Min',
          4.8,
          5,
          ' 100 kcal',
          "20","ชุด",
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
          'ขนมลูกตุยงาขาว',0,
          ' 5-10 Min',
          4.8,
          5,
          ' 100 kcal',
           "20","ชุด",
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
          'ขนมไข่หงส์',0,
          ' 5-10 Min',
          4.8,
          5,
          ' 100 kcal',
            "20","ชุด",
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