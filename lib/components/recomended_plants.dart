import 'package:flutter/material.dart';
import 'package:plantapp/components/body.dart';
import 'package:plantapp/constatnts.dart';

class RecommendPlantCard extends StatelessWidget {
  RecommendPlantCard(
      {required this.image,
      required this.title,
      required this.country,
      required this.price,
      required this.mypress});
  final String image;
  final String title;
  final String country;
  final int price;
  final Function()? mypress;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: KDefalutPadding,
          top: KDefalutPadding / 2,
          bottom: KDefalutPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          PlantImg(
            myimage: image,
          ),
          GestureDetector(
            onTap: mypress,
            child: Container(
              padding: EdgeInsets.all(KDefalutPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: KPrimaryColor.withOpacity(0.23),
                    )
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                          text: country.toUpperCase(),
                          style:
                              TextStyle(color: KPrimaryColor.withOpacity(0.5))),
                    ]),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: KPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
