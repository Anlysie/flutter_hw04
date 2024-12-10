// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'image_data.dart';

class MyImage extends StatelessWidget {
  final ImageData data;
  final Color textColor;
  final double size;

  const MyImage({
    super.key,
    required this.data,
    this.textColor = Colors.black,
    this.size = 80,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          data.url,
          width: size,
          height: size,
        ),
        Positioned(
          bottom: 0,
          right: 3,
          child: Container(
            color: Colors.white,
            child: Text(
              data.name,
              style: TextStyle(
                color: textColor,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
