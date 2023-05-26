import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('⾸⻚'),
      ),
      body: Center(
        child: TextButton(
            child: Text('跳转到商品⻚'),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Product()))),
      ),
    );
  }
}

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品⻚'),
      ),
      body: Center(
        child: TextButton(
            child: Text('返回⾸⻚'), onPressed: () => Navigator.pop(context)),
      ),
    );
  }
}
