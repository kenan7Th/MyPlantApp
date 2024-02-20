import 'package:flutter/material.dart';
import 'package:plantapp/constatnts.dart';
import 'package:plantapp/screens/home/components/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Plants',
        theme: ThemeData(
          scaffoldBackgroundColor: KBackgroundColor,
          primaryColor: KPrimaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: KTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const HomeScreen());
  }
}
