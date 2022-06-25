import 'package:Travel_Utt/model/place.dart';
import 'package:Travel_Utt/screen/home/widget/place_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PlaceStaggerdFridView extends StatelessWidget {
  final int _selectedIndex;

  PlaceStaggerdFridView(
    this._selectedIndex,
  );
  // final placeList = Place.generatePlaces()+Place.generateFood();
  // final foodList = Place.generateFood();

  //final List<Place> test =[placeList,foodList];

  var Lists = <String, List<Place>>{
     'N': Place.generateRec(),
    'P': Place.generatePlaces(),
    'F': Place.generateFood()
  };

  var list = ['N','P', 'F'];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            itemCount: Lists[list[_selectedIndex]]!.length,
            crossAxisCount: 4,
            itemBuilder: (context, index) => PlaceItem(Lists[list[_selectedIndex]]![index]),
            staggeredTileBuilder: (_) => StaggeredTile.fit(2)));
  }
}
