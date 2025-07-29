import 'package:flutter/material.dart';
import 'package:isma_project/main_layout.dart';

class RowOne extends StatelessWidget {
  const RowOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Row Satu',
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('Text Widget 1'),
          Text('Text Widget 2'),
          Text('Text Widget 3'),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Text WC 1'),
              Text('Text WC 2'),
              Text('Text WC 3'),
            ],
          )
        ],
      ),
    );
  }
}
