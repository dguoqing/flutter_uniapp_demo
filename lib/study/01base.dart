import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text(
          '黄豆芽4444',
          textDirection: TextDirection.rtl,
        ),
      )),
      body: Container(
          child: Wrap(
              spacing: 8.0, // 主轴(⽔平)⽅向间距
              runSpacing: 4.0, // 纵轴（垂直）⽅向间距
              // alignment: WrapAlignment.spaceAround, //沿主轴⽅向居中
              children: [
            ButtonBar(
              children: [
                TextButton(
                  child: const Text('异步请求'),
                  onPressed: () async {
                    // Respond to button press
                    print('开始');

                    var dio = Dio();
                    Response response = await dio.get(
                      'http://172.16.9.18:3000/test',
                    );
                    print(response.data.toString());
                    print('结束');
                  },
                ),
                OutlinedButton(
                  child: const Text('23423'),
                  onPressed: () {
                    // Respond to button press
                    print('2342');
                  },
                ),
                ElevatedButton(
                  child: const Text('23423'),
                  onPressed: () {
                    // Respond to button press
                    print('2342');
                  },
                ),
                TextButton.icon(
                  icon: Icon(Icons.access_alarms),
                  label: const Text('Text Button'),
                  onPressed: () {
                    // Respond to button press
                    print('2342');
                  },
                ),
                TextButton(
                  child: const Text('23423'),
                  onPressed: () {
                    // Respond to button press
                    print('2342');
                  },
                ),
                TextButton(
                  child: const Text('23423'),
                  onPressed: () {
                    // Respond to button press
                    print('2342');
                  },
                ),
                TextButton(
                  child: const Text('23423'),
                  onPressed: () {
                    // Respond to button press
                    print('2342');
                  },
                ),
                TextButton(
                  child: const Text('23423'),
                  onPressed: () {
                    // Respond to button press
                    print('2342');
                  },
                ),
              ],
            ),
            const Image(
              image: NetworkImage("https://dummyimage.com/300X300/DDFFBB"),
              width: 200.0,
            ),
            const Chip(
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('蜀')),
              label: Text('刘备'),
            ),
            const Chip(
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('蜀')),
              label: Text('关⽻'),
            ),
            const Chip(
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('蜀')),
              label: Text('张⻜'),
            ),
            const Chip(
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('蜀')),
              label: Text('赵云'),
            ),
            const Chip(
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('蜀')),
              label: Text('⻢超'),
            ),
            const Chip(
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('蜀')),
              label: Text('诸葛亮'),
            ),
          ])),
    );
  }
}
