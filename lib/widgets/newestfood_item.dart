import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewestFoodItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final double price;

  const NewestFoodItem({super.key, required this.imagePath, required this.title, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child:Container(
        width: 378,
        height: 150,
        padding: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0, 3),
              )
            ]

        ),
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(imagePath, width: 150, height:120,),
              ),
            ),
            Container(
              width: 190,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Text(title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                   Text(description, style: TextStyle(fontSize: 16, color: Colors.grey),),
                  RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemSize: 18,
                      itemCount: 5,
                      itemBuilder: (context, _)=> const Icon(Icons.star, color: Colors.red,),
                      onRatingUpdate: (index) {}),
                      Text("\$$price", style: TextStyle(fontSize: 20,color: Colors.red, fontWeight: FontWeight.bold),
                  ),

                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_border, color: Colors.red, size: 26,),
                  Icon(CupertinoIcons.cart, color: Colors.red, size: 26,),
                ],
              ),
            )


          ],
        ),
      ) ,
    );
  }
}
