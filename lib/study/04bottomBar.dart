import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<BottomNavigationBarItem> bottomNavItems = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.home), label: '首页', backgroundColor: Colors.blue),
    const BottomNavigationBarItem(
        icon: Icon(Icons.message), label: '消息', backgroundColor: Colors.green),
    const BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: '购物车',
        backgroundColor: Colors.blue),
    const BottomNavigationBarItem(
        icon: Icon(Icons.person), label: '我的', backgroundColor: Colors.blue),
  ];

  final pages = [
    const Center(
      child: Text(
        'home',
        style: TextStyle(fontSize: 20),
      ),
    ),
    const Center(
      child: Text(
        'message',
        style: TextStyle(fontSize: 20),
      ),
    ),
    const Center(
      child: Text(
        'Shoping-car',
        style: TextStyle(fontSize: 20),
      ),
    ),
    const Center(
      child: Text(
        'my',
        style: TextStyle(fontSize: 20),
      ),
    )
  ];

  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('底部导航')),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      body: pages[currentIndex],
    );
  }
}
