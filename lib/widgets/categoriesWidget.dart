import "package:flutter/cupertino.dart";
import  "package:flutter/material.dart";
import "package:flutter/painting.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
import "package:food_app/widgets/categorieItem.dart";

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            CategoryItem(imagePath: "assets/images/drink.png"),
            CategoryItem(imagePath: "assets/images/salan.png"),
            CategoryItem(imagePath: "assets/images/pizza.png"),
            CategoryItem(imagePath: "assets/images/burger.png"),
            CategoryItem(imagePath: "assets/images/biryani.png"),


          ],
        ),
      ),

    );
  }
}
