import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_app/widgets/newestfood_item.dart';

class NewestFoodWidget extends StatelessWidget {
  const NewestFoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [

            NewestFoodItem(
              imagePath: "assets/images/burger.png",
              title: "Hot Burger",
              description: "Taste Our Hot Burger, we Provide our Great Foods",
              price: 12,),
            NewestFoodItem(
              imagePath: "assets/images/pizza.png",
              title: "Hot Pizza",
              description: "Taste Our Hot Pizza, we Provide our Great Foods",
              price: 12,),
            NewestFoodItem(
              imagePath: "assets/images/biryani.png",
              title: "Hot Biryani",
              description: "Taste Our Hot Biryani, we Provide our Great Foods",
              price: 12,),

            NewestFoodItem(
              imagePath: "assets/images/drink.png",
              title: "Cold drink",
              description: "Taste Our Cold drink, we Provide our Great Foods",
              price: 12,),

            NewestFoodItem(
              imagePath: "assets/images/salan.png",
              title: "Hot salan",
              description: "Taste Our Hot salan, we Provide our Great Foods",
              price: 12,),





          ],
        ),
      ),
    );
  }
}
