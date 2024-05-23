import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/widgets/appbarwidget.dart';
import 'package:food_app/widgets/my_drawer.dart';

import '../widgets/cart_bottom_nav_bar.dart';
import '../widgets/orderitem.dart';
import '../widgets/titleWidget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      bottomNavigationBar: const CartBottomNavBar(),
      body: ListView(
        children:  [
          SingleChildScrollView(
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const AppBarWidget(),

                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 20, bottom: 10),
                  child: TitleWidget(title: "OrderList"),
                ),

                const OrderItem(imagePath: 'assets/images/burger.png', title: "Hot Burger", description: "Taste our hot burger", price: "10",),
                const OrderItem(imagePath: 'assets/images/pizza.png', title: "Hot pizza", description: "Taste our hot pizza", price: "15",),
                const OrderItem(imagePath: 'assets/images/biryani.png', title: "Hot Biryani", description: "Taste our hot biryani", price: "12",),
                //OrderItem(imagePath: 'assets/images/salan.png', title: "Hot Salan", description: "Taste our hot salan", price: "10",),
                //OrderItem(imagePath: 'assets/images/drink.png', title: "Cold drink", description: "Taste cold drink", price: "8",),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Column(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("items:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

                            Text("3", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        ),
                        Divider(height: 3,),
                        Padding(padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Sub-total:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

                              Text("\$${10*3}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Divider(height: 3,),
                        Padding(padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Delivery:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

                              Text("\$20", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Divider(height: 3,),
                        Padding(padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

                              Text("\$${10*3+20}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.red),),
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                )
              ],
            )  ,
            )
          )
        ],
      ),
    );
  }
}
