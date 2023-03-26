import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {


  final int selected;
  final Function callback;
   CategoryList(this.selected, this.callback);




  final categoryList = ['แนะนำ', 'สถานที่ท่องเที่ยว', 'อาหาร&เครื่องดื่ม'];
  //int currentSelected = 0;




  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 20,
      child: ListView.separated(
        shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () => callback(index),
                child: Text(
                  categoryList[index],
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: selected == index
                          ? FontWeight.bold
                          : FontWeight.w500,
                      color: selected == index
                          ? Colors.blue
                          : Colors.grey),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 15,
              ),
          itemCount: categoryList.length),
    );
  }
}
