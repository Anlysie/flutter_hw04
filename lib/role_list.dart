// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_hw03/my_image.dart';

import 'image_data.dart';

class RoleList extends StatelessWidget {
  final List<ImageData> dataList;

  const RoleList(this.dataList, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          final data = dataList[index];
          return MyImage(data: data);
        },
        separatorBuilder: (context, index) => SizedBox(width: 24),
      ),
    );
  }
}
