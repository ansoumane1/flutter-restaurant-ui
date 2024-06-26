import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String  imagePath;
  const CategoryItem({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return   Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 3),
              )
            ],
          ),
          child: Image.asset(imagePath, width: 50,height: 50,),
        )
    );
  }
}
