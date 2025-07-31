import 'package:flutter/material.dart';
import 'package:isma_project/main_layout.dart';

class ListSatu extends StatelessWidget {
  const ListSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'ListView Builder',
      body: ListView.builder(
        itemCount: 10, 
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.pink,
            margin: const EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: Text('Text' + index.toString()),
          );
        },
      ),
    );
  }
}
