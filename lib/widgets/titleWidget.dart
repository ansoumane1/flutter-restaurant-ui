import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:20, left: 10),
      child: Text(
          title,
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
