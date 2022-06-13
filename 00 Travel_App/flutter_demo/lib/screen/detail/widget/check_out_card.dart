import 'package:Travel_Utt/model/place.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map_launcher/map_launcher.dart';


class CusNavigationBar extends StatelessWidget {

  final Place place;
  CusNavigationBar(this.place);

  @override
  Widget build(BuildContext context) {
    return Container(
         padding: EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 30),
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              // topLeft: Radius.circular(30),
              // topRight: Radius.circular(30),
              ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15),
            )
          ],
        ),
        child: Row(
          
          
          children: [
          Expanded(
            flex: 2,
            child: Container(),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
              height: double.infinity,
              decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8)),
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 25,
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: GestureDetector (
                onTap:  () async {
                  


         if (await MapLauncher.isMapAvailable(MapType.google) ==
                          true) {
                        MapLauncher.showMarker(
                            mapType: MapType.google,
                            coords: Coords(place.Lat,place.Long),
                            title: 'title');
                      }

                  
                },
                child: Container(
                 
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      'ดูในแผนที่',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                
                  margin:
                      EdgeInsets.only(left: 10, right: 0, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, -15),
                        blurRadius: 20,
                        color: Color(0xFFDADADA).withOpacity(0.15),
                      )
                    ],
                  ),
                ),
              )),
        ]));

        
  }

  
}

