import 'package:flutter/material.dart';

import 'package:plantapp/screens/detalis/detailscomponents/titlewithprice.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          //ImgageAndIcons(size: size),

          TitleWithPrice(
            title: "Grunen Blumen",
            country: "DuetschLand",
            price: 225,
          ),
        ],
      ),
    );
  }
}
