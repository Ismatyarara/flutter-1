
import 'package:flutter/material.dart';
import 'package:isma_project/main_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: halloflutter()
   );
  }
}

class halloflutter extends StatelessWidget {
  const halloflutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'belajar flutter',
      body: Center(
        child: Text(
          'hallo flutter', 
          style: TextStyle(
            fontSize : 24,
            color :Colors.white,
            fontWeight: FontWeight.bold,
            backgroundColor: Color.fromARGB(255, 218, 172, 187),
          )),
      ),
    );
  }
}
