import 'package:flutter/material.dart';
import 'package:food_app/pages/cart_page.dart';
import 'package:food_app/pages/home_page.dart';
import 'package:food_app/pages/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Garista App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade200,
      ),
      routes:{
        "/": (context) => const HomePage(),
        "cartPage": (context) => const CartPage(),
        "itemPage": (context) => const ItemPage(),
      },

    );
  }
}
