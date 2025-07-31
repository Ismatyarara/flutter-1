import 'package:flutter/material.dart';
import 'package:isma_project/main_layout.dart';

class ListDua extends StatelessWidget {
  ListDua({super.key});

  final List<Map<String, dynamic>> listData = [
    {'color': Color.fromARGB(255, 4, 69, 122), 'partai': 'partai banteng'},
    {'color': Colors.blue, 'partai': 'partai joreg'},
    {'color': const Color.fromARGB(255, 146, 188, 223), 'partai': 'partai solid'},
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'list builder',
      body: ListView.builder(
          itemCount: listData.length,
          itemBuilder: (context, i) {
            final data = listData[i];
            return Container(
              // margin: EdgeInsets.all(100),
              color: data['color'],
              width: 200,
              height: 100,
              child: Center(child: Text(data['partai'])),
            );
          }),
    );
  }
}
