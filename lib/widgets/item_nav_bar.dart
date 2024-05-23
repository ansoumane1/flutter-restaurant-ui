import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemNavBar extends StatelessWidget {
  const ItemNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
      color: Colors.white,

      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 70,

          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Text("Total: ", style: TextStyle(fontSize: 20),),
                  SizedBox(width: 15,),
                  Text("\$1000", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),),
                ],
              ),
              ElevatedButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                  ),
                ),
                icon: const Icon(CupertinoIcons.cart, color: Colors.white,),
                label: const Text("Order Now", style: TextStyle(color: Colors.white),),
              )
            ],

          )
      ),

    );
  }
}
