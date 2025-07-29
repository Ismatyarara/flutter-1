import 'package:flutter/material.dart';
import 'package:isma_project/main_layout.dart';

class ContainerSatu extends StatelessWidget {
  const ContainerSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Satu',
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        color: const Color.fromARGB(255, 203, 121, 148),
        width: 200,
        height: 200,
        child: Container(
          margin: const EdgeInsets.all(8),
          color: Colors.pink,
          child: const SizedBox(
            height: 20,
            child: Text('Text'),
          ),
        ),
      ),
    );
  }
}
