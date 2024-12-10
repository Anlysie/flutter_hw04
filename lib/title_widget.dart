// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  //標題
  final String title;

  const TitleWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star_purple500_outlined,
            color: const Color.fromARGB(255, 251, 255, 0),
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              // fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.star_purple500_outlined,
            color: const Color.fromARGB(255, 251, 255, 0),
          ),
        ],
      ),
    );
  }
}
