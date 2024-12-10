// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_hw03/main.dart';
import 'package:flutter_hw03/title_widget.dart';

class BasicInfo extends StatelessWidget {
  const BasicInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                'https://cw-image-resizer.cwg.tw/resize/uri/https%3A%2F%2Fstorage.googleapis.com%2Fcrossing-cms-cwg-tw%2Farticle%2F202402%2Farticle-65c20904d65c1.png/?w=1170&format=webp',
                width: 360,
                height: 150,
                fit: BoxFit.cover,
              ),
            ],
          ),
          SizedBox(height: 20.0),
          TitleWidget(title: '基本介紹'),
          SizedBox(
            height: 10,
          ),
          Text(
            '《可愛巧虎島》在日文直翻是「條紋虎的縞次郎」，而故事描寫主角巧虎在他所處「巧連智島」的日常生活，'
            '以在如夢的世界中冒險作為學習契機，另包括與身邊親朋好友的糾紛以及生活情節。角色也與時俱進，'
            '出現不同家庭型態的角色，目前主要角色有：巧虎、妙妙、桃樂比、琪琪以及巧虎妹妹小花。',
            style: TextStyle(
              color: Colors.white,
              // fontSize: 20.0,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
