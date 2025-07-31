import 'package:flutter/material.dart';
import 'package:isma_project/main_layout.dart';

class GridSatu extends StatelessWidget {
  const GridSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'grid satu',
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          Container(color: Color(0xFFFFF5BA), width: 200, child: Text('1')),
          Container(color: Color(0xFFCDB4DB), width: 200, child: Text('1')),
          Container(color: Color(0xFFFFC1CC), width: 200, child: Text('1')),
          Container(color: Color(0xFFA0E7E5), width: 200, child: Text('1')),
          Container(color: Color(0xFFFFD6E0), width: 200, child: Text('1')),
          Container(color: Color(0xFFE2F0CB), width: 200, child: Text('1')),
          Container(color: Color(0xFFFFE0AC), width: 200, child: Text('1')),
          Container(color: Color(0xFFB5EAD7), width: 200, child: Text('1')),
          Container(color: Color(0xFFDEF3FD), width: 200, child: Text('1')),
          Container(color: Color(0xFFFFE3F1), width: 200, child: Text('1')),
        ],
      ),
    );
  }
}
