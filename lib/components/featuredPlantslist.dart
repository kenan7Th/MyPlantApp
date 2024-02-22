import 'package:flutter/material.dart';
import 'package:plantapp/components/featureplantcard.dart';

class FeaturedPlantsList extends StatelessWidget {
  const FeaturedPlantsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantedCar(
            my2image: "assets/images/featured plantsthree.jpg",
            my2press: () {},
          ),
          FeaturePlantedCar(
            my2image: "assets/images/featured plantsone.jpg",
            my2press: () {},
          ),
          FeaturePlantedCar(
            my2image: "assets/images/featured plantstwo.jpg",
            my2press: () {},
          ),
          FeaturePlantedCar(
            my2image: "assets/images/featuredplantsfourjpg.jpg",
            my2press: () {},
          ),
        ],
      ),
    );
  }
}
