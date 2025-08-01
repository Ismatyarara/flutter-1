import 'package:flutter/material.dart';

import 'package:isma_project/main_layout.dart';
import 'package:isma_project/ulangan/kursus_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KursusOnline(), // halaman utama yang ditampilkan
    );
  }
}

class HalloFlutter extends StatelessWidget {
  const HalloFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: 'Belajar Flutter',
      body: Center(
        child: Text(
          'Hallo Flutter',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            backgroundColor: Color.fromARGB(255, 218, 172, 187),
          ),
        ),
      ),
    );
  }
}
