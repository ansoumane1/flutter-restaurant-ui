import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

import "../widgets/appbarwidget.dart";
import "../widgets/categoriesWidget.dart";
import "../widgets/my_drawer.dart";
import "../widgets/newest_food.dart";
import "../widgets/popularfoodwidget.dart";
import "../widgets/titleWidget.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer
      drawer: const MyDrawer(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ]

        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "cartPage");
          },
          backgroundColor: Colors.white,
          child: const Icon( CupertinoIcons.cart,
            color: Colors.red,
          ),

        ),
      ),
      body: ListView(
        children: const [
          // Custom app bar widget
          AppBarWidget(),

          // Search bar
          TitleWidget(title: "Categories"),

          // Category

          Padding(
            padding: EdgeInsets.only(top:20, left: 10),
            child: Text(
              "Categories",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          // List of categories
          CategoriesWidget(),

          // Popular food
          TitleWidget(title: "Popular Food"),

          // List of popular food
          PopularFoodWidget(),

          TitleWidget(title: "Newest Food"),
          // List of Newest food
          NewestFoodWidget(),
        ],
      )
    );
  }
}
