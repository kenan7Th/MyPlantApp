import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp/constatnts.dart';
import 'package:plantapp/screens/detalis/icon_card.dart';

class ImgageAndIcons extends StatelessWidget {
  const ImgageAndIcons({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: KDefalutPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset("assets/icons/backarrow.svg"),
                    ),
                  ),
                  Spacer(),
                  IconCard(
                    icon: "assets/icons/sun.svg",
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  IconCard(
                    icon: "assets/icons/sun.svg",
                  ),
                  IconCard(
                    icon: "assets/icons/sun.svg",
                  ),
                  IconCard(
                    icon: "assets/icons/sun.svg",
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: Colors.green.withOpacity(0.29),
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/featuredplantsfourjpg.jpg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
