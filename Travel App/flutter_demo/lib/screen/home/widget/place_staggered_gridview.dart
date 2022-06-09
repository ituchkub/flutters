import 'package:Travel_Utt/model/place.dart';
import 'package:Travel_Utt/screen/home/widget/place_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PlaceStaggerdFridView extends StatelessWidget {
  final placeList = Place.generatePlaces();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            itemCount: placeList.length,
            crossAxisCount: 4,
            itemBuilder: (context, index) => PlaceItem(placeList[index]),
            staggeredTileBuilder: (_) => StaggeredTile.fit(2)));
  }
}
