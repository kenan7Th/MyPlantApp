import 'package:flutter/material.dart';
import 'package:plantapp/components/featuredPlantslist.dart';
import 'package:plantapp/components/header_with_searches.dart';
import 'package:plantapp/components/recomended_plants.dart';
import 'package:plantapp/components/title_wit_more_button.dart';

import 'package:plantapp/constatnts.dart';
import 'package:plantapp/screens/detalis/detailscomponents/detailscreen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It will provide us the total height and width of our screen
    Size size = MediaQuery.of(context).size;

    // it enables scrolling on small devices
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: 'recommended',
            press: () {},
          ),

//it wil cover 40% of our total width
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecommendPlantCard(
                    image: "assets/images/roseone.jpg",
                    title: "Kasadnra",
                    country: "Russia",
                    price: 440,
                    mypress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen()));
                    }),
                RecommendPlantCard(
                    image: "assets/images/roseone.jpg",
                    title: "Kasadnra",
                    country: "Russia",
                    price: 440,
                    mypress: () {}),
                RecommendPlantCard(
                    image: "assets/images/roseone.jpg",
                    title: "Kasadnra",
                    country: "Russia",
                    price: 440,
                    mypress: () {}),
                RecommendPlantCard(
                    image: "assets/images/roseone.jpg",
                    title: "Kasadnra",
                    country: "Russia",
                    price: 440,
                    mypress: () {}),
                TitleWithMoreButton(title: "Featured Plant", press: () {}),
                FeaturedPlantsList(),
                SizedBox(
                  height: KDefalutPadding,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PlantImg extends StatelessWidget {
  PlantImg({
    required this.myimage,
  });
  final String myimage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50), // Adjust the radius as needed
        child: Image.asset(
          myimage, // Path to your image asset
          width: 100, // Set the width of the image
          height: 100, // Set the height of the image
          fit: BoxFit.cover, // Adjust how the image fits within the container
        ),
      ),
    );
  }
}

class TitleWithCustomUnderLine extends StatelessWidget {
  final String mytext;

  TitleWithCustomUnderLine({required this.mytext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(
                KDefalutPadding / 4), // Corrected typo here
            child: Text(
              mytext,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              margin: EdgeInsets.only(
                  right: KDefalutPadding / 4), // Corrected typo here
              height: 7,
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: KPrimaryColor,
      onPressed: () {},
    );
  }
}
