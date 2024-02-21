import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp/constatnts.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: KDefalutPadding * 2.5),
      //it will cover 20% of our ktotal height
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          //Marr
          Container(
            padding: EdgeInsets.only(
                left: KDefalutPadding,
                right: KDefalutPadding,
                bottom: 36 + KDefalutPadding),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: KPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Hi Planto!',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Spacer(),
                Image.asset("assets/images/logo.png"),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: KDefalutPadding),
                padding: EdgeInsets.symmetric(horizontal: KDefalutPadding),
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: KPrimaryColor.withOpacity(0.23),
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: KPrimaryColor.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          // suffix is not working properly with SVG
                          //that why we use row
                        ),
                      ),
                    ),
                    SvgPicture.asset("assets/icons/search-svgrepo-com.svg"),
                  ],
                ),
              ))
        ],
      ),
      color: Colors.black,
    );
  }
}
