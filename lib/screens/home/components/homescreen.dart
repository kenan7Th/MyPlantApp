import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp/components/body.dart';
import 'package:plantapp/constatnts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu-alt-04-svgrepo-com.svg")),
      backgroundColor: KPrimaryColor,
    );
  }
}
