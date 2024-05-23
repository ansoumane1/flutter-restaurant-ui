import "package:flutter/material.dart";

class FoodItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final double price;
  const FoodItem({super.key, required this.imagePath, required this.title, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
          padding: const EdgeInsets.all(7),
          width:160,

          decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                )
              ]
          ),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "itemPage");
                },
                child: Container(
                  child: Image.asset(imagePath, height:130),
                ),
              ),
               Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              const SizedBox(height: 4,),
              Text(description, style: TextStyle(fontSize: 15, color: Colors.grey.shade600),),
              const SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$$price", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.red),),
                  Icon(Icons.favorite_border, color: Colors.red,)
                ],
              )

            ],
          )
      ),
    );
  }
}
