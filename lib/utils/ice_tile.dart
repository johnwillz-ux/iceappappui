import 'package:flutter/material.dart';

class IceTile extends StatelessWidget {
  final String iceFlavor;
  final String icePrice;
  final iceColor;
  final String imageName;

  final double BoderR = 12;

  const IceTile({
    super.key,
    required this.iceFlavor,
    required this.icePrice,
    required this.iceColor,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: iceColor[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: iceColor[100],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(BoderR),
                          topRight: Radius.circular(BoderR)
                        )),
                    padding: EdgeInsets.all(12),
                    child: Text(
                      '\$$icePrice',
                      style: TextStyle(
                          color: iceColor[800], fontWeight: FontWeight.bold),
                    )),
              ],
            ),

            //ice cream Pic
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 5),
              child: Image.asset(imageName),
              
            ),
            SizedBox(height: 10,),


            // ice cream flavour
            Text(iceFlavor, style: const TextStyle(fontWeight: FontWeight.bold,
            fontSize: 16)),
            SizedBox(height: 4,),
            Text('coldstone', style: TextStyle(color: Colors.grey[600])),


            ///love and savebutton
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite,color: Colors.pink[400],),


                  Icon(Icons.shopping_cart,color: Colors.black,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
