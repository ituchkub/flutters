import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Container(
                  // color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Hello, '),
                              Text(
                                'Ariz',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Text('What you want eat today')
                        ],
                      ),
                      Container(
                        child: Image.asset(
                          "assets/images/a.png",
                          width: 80,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    onChanged: (value) => print(value),
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "Search for food",
                        suffixIcon: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16 / 2),
                          child: SizedBox(
                            // width: 50,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFFF67952),
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                ),
                              ),
                              onPressed: () {},
                              child: Icon(Icons.filter_list_sharp),
                            ),
                          ),
                        ),
                        prefixIcon: Icon(Icons.search)),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                    height: 60,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => GestureDetector(
                              //onTap: () => callback(index),
                              child: Container(
                                padding: EdgeInsets.all(2),
                                alignment: Alignment.center,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Color(
                                      0xFFF67952,
                                    ),
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(25),
                                        right: Radius.circular(25))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                                            
                                  children: [
                                    Image.asset(
                                      "assets/images/a.png",
                                      width: 80,
                                    ),
                                    Text(
                                      'แนะนำ',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        separatorBuilder: (_, index) => SizedBox(
                              width: 10,
                            ),
                        itemCount: 3)),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
