import 'package:flutter/material.dart';

class FeatureList extends StatelessWidget {
  final String imageUrl;

  FeatureList(this.imageUrl);

  final featureList = ['ที่จอดรถ', 'อาหาร',  'ห้องน้ำ',  'ของฝาก'];
  List<Color> Lcolors = [Colors.blue, Colors.amber, Colors.pink, Colors.green];

  final List<IconData> Licons = [
 Icons.local_parking ,
    Icons.egg_alt_outlined,

      Icons.castle,Icons.tour,
  ];

  int currentSelect = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children:[ 
        // Container(
        //   padding: EdgeInsets.only(left: 30,top: 10),
        //   child: Text('การให้บริการ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500))),
        
        Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 30),
        height: 70,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Column(children: [
                  Container(
                      width: 40,
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Lcolors[index].withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        Licons[index],
                        size: 20,
                        color: Lcolors[index],
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    featureList[index],
                    style: TextStyle(fontSize: 12),
                  ),
                ]),
            separatorBuilder: (_, index) => SizedBox(width: 20),
            itemCount: featureList.length),
      ),]
    );
  }
}
