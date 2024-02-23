import 'package:flutter/material.dart';
import 'package:plantapp/constatnts.dart';

class TitleWithPrice extends StatelessWidget {
  const TitleWithPrice(
      {required this.title, required this.country, required this.price});
  final String title;
  final String country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KDefalutPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: "$title\n",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: KTextColor, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                  text: "$country",
                  style: TextStyle(
                    fontSize: 20,
                    color: KPrimaryColor,
                    fontWeight: FontWeight.w300,
                  ))
            ]),
          ),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: KPrimaryColor),
          )
        ],
      ),
    );
  }
}
