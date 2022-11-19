import 'package:flutter/material.dart';
import '../utils/ice_tile.dart';

class IceTab extends StatelessWidget {
  IceTab({Key? key}) : super(key: key);
  //list of ice cream
  List iceCreams = [
    // [ ice cream Flavour, Ice cram Price, Ice cream Color, ImageName ]
    ['Pulpy Pink', '36', Colors.pink, 'lib/images/pulpypink.png'],
    ['Cloud Ice', '54', Colors.blue, 'lib/images/cloudice.png'],
    ['Sweet Yum', '92', Colors.amber, 'lib/images/sweetyum.png'],
    ['Choco Ice', '22', Colors.brown, 'lib/images/chocoice.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(12),
      itemCount: iceCreams.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.5),
        itemBuilder: (context, index) {
          return IceTile(
            iceFlavor: iceCreams[index][0],
            icePrice: iceCreams[index][1],
            iceColor: iceCreams[index][2],
            imageName: iceCreams[index][3],
          );
        });
  }
}
