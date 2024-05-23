import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: Text("Order Now", style: TextStyle(color: Colors.white),),
            )
          ],

        )
      ),

    );
  }
}
