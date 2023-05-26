import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() {
    print('createState');
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print('initState');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('deactivate');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose');
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text(
          '黄豆芽4444',
          textDirection: TextDirection.rtl,
        ),
      )),
      body: Container(
        child: Center(
            child: Column(
          children: [
            TextButton.icon(
                onPressed: increment,
                icon: const Icon(Icons.add),
                label: const Text('增加')),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text('$count'),
            ),
            TextButton(onPressed: decrement, child: const Text('减少'))
          ],
        )),
      ),
    );
  }
}
