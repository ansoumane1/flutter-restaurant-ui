import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class OrderItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String price;

  const OrderItem({super.key, required this.imagePath, required this.title, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child:Container(
        height:100,
        width: 400,
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
        child: Row(
          children: [

            Container(
              alignment: Alignment.center,

              child: Image.asset(imagePath, height: 80, width: 150,),
            ),

            Container(
              width: 170,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(description,style: TextStyle(fontSize: 15, //fontWeight: FontWeight.bold
                  ),),
                  Text("\$$price",style: TextStyle(fontSize: 20,color: Colors.red, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                padding:const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(CupertinoIcons.minus, color: Colors.white,),
                    Text("1", style: TextStyle(color: Colors.white),),
                    Icon(CupertinoIcons.plus, color: Colors.white,),
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
