// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'basic_info.dart';
import 'career_section.dart';
import 'image_data.dart';
import 'role_list.dart';
import 'title_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  List<ImageData> get _imageList => [
        ImageData(
          url:
              'https://blog.myvideo.net.tw/wp-content/uploads/2023/11/editor9957729486.png',
          name: '巧虎',
        ),
        ImageData(
          url:
              'https://blog.myvideo.net.tw/wp-content/uploads/2023/11/editor9964951858.png',
          name: '琪琪',
        ),
        ImageData(
          url:
              'https://blog.myvideo.net.tw/wp-content/uploads/2023/11/editor9960939128.png',
          name: '妙妙',
        ),
        ImageData(
          url:
              'https://blog.myvideo.net.tw/wp-content/uploads/2023/11/editor9963262065.png',
          name: '桃樂比',
        ),
      ];

  //大標題
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '巧虎新樂園',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Color.fromARGB(255, 47, 120, 238),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '可愛巧虎島 ',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 161, 229, 122),
                ),
                textAlign: TextAlign.center,
              ),
              Divider(
                color: Colors.grey[800],
                height: 17.0,
              ),
              BasicInfo(),
              Divider(
                color: Colors.grey[800],
                height: 20.0,
              ),
              TitleWidget(title: '角色清單'),
              SizedBox(height: 10.0),
              RoleList(_imageList),
              SizedBox(height: 20.0),
              Divider(
                color: Colors.grey[800],
                height: 20.0,
              ),
              TitleWidget(title: '電影作品'),
              SizedBox(height: 10.0),
              CareerSection(),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
