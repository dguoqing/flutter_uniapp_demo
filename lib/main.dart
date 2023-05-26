import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
// import 'study/01base.dart';
// import 'study/02.dart';
// import 'study/03router.dart';
// import 'study/Drawer.dart';
import 'study/04bottomBar.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '黄豆芽',
      theme: ThemeData(fontFamily: 'Zhi_Mang_Xing'),
      home: MyHomePage(),
    );
  }
}
