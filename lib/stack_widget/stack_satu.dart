import 'package:flutter/material.dart';
import 'package:isma_project/main_layout.dart';

class StackOne extends StatelessWidget {
  const StackOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'belajar stack',
      body: Stack(
        alignment: Alignment(100,200),
        children: [
          Container(width: 200, height: 200, color: Colors.red),
          Container(width: 200, height: 200, color: Colors.orange),
          Container(width: 200, height: 200, color: Colors.yellow),
        ],
      ),
    );
  }
}
