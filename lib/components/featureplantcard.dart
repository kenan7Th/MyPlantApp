import 'package:flutter/material.dart';
import 'package:plantapp/constatnts.dart';

class FeaturePlantedCar extends StatelessWidget {
  FeaturePlantedCar({
    required this.my2image,
    required this.my2press,
  });
  final String my2image;
  final Function()? my2press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: my2press,
      child: Container(
        margin: EdgeInsets.only(
            left: KDefalutPadding,
            top: KDefalutPadding / 2,
            bottom: KDefalutPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(my2image), fit: BoxFit.cover)),
      ),
    );
  }
}
