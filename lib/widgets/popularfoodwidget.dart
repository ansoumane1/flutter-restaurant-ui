import 'package:flutter/material.dart';

import 'food_item.dart';


class PopularFoodWidget extends StatelessWidget {
  const PopularFoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          child: Row(
            children: [
              // single item
              FoodItem(
                imagePath: 'assets/images/burger.png',
                title: "Hot Burger",
                description: "Taste Our Hot Burger",
                price: 12,),
              FoodItem(
                imagePath: 'assets/images/salan.png',
                title: "Hot Burger",
                description: "Taste Our Hot salan",
                price: 12,),
              FoodItem(
                imagePath: 'assets/images/pizza.png',
                title: "Hot Burger",
                description: "Taste Our Hot Pizza",
                price: 12,),
                FoodItem(
                  imagePath: 'assets/images/drink.png',
                  title: "Cold drink",
                  description: " Our Cold drink",
                  price: 12,),
              FoodItem(
                imagePath: 'assets/images/biryani.png',
                title: "Hot Biryani",
                description: "Taste Our Hot Biryani",
                price: 12,),
            ],
          )
      )
    );
  }
}
