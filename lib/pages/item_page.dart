import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_app/widgets/appbarwidget.dart';

import '../widgets/item_nav_bar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: const ItemNavBar(),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        child: ListView(
          children:  [
            AppBarWidget(),
            Padding(padding: const EdgeInsets.all(16),
              child: Image.asset("assets/images/burger.png", width: 300, height: 300,),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.zero ,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:60, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,

                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.red,
                            ), onRatingUpdate: (double value) {  },
                          ),
                          const Text("\$10.00", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),),
                        ],
                      )
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top:10, bottom: 20),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Hot Burger", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          Container(
                            width: 90,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.remove, color: Colors.white, size: 20,),
                                Text("1", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                                Icon(Icons.add, color: Colors.white, size: 20,),
                              ],
                            ),
                          )
                        ],
                      )
                    ),
                    const Text("Taste our hot burger at low price , this is famous pizza and you will love it. it will cost you at low price, hope you will enjoy and order many times", style: TextStyle(fontSize: 16), textAlign: TextAlign.justify, ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery Time:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic), textAlign: TextAlign.justify, ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Icon(CupertinoIcons.clock, color: Colors.red,),),
                              Text("30 min", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic), textAlign: TextAlign.justify, ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
