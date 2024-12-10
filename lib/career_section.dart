// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CareerSection extends StatelessWidget {
  const CareerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      decoration: BoxDecoration(
        color: Color.fromRGBO(19, 15, 203, 0.71),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Color.fromRGBO(234, 236, 174, 0.902),
          width: 1,
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 300,
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Text(
                  '◎2013年，巧虎的大冒險\n'
                  '◎2014年，巧虎與小白鯨的大冒險\n'
                  '◎2015年，巧虎搶救天空樹\n'
                  '◎2016年，巧虎繪本王國歷險記\n'
                  '◎2017年，巧虎的彩虹綠洲\n'
                  '◎2018年，巧虎電影：魔法島大冒險\n'
                  '◎2019年，巧虎電影：英雄遊樂園\n'
                  '◎2021年，巧虎與飛船\n'
                  '◎2022年，巧虎電影：巧虎與塔魯王子\n',
                  // '• Item 3\n',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
