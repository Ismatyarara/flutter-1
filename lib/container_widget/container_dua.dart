import 'package:flutter/material.dart';
import 'package:isma_project/container_widget/container_satu.dart';
import 'package:isma_project/main_layout.dart';

class ContainerDua extends StatelessWidget {
  const ContainerDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Dua',
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 214, 151, 225),
              Color.fromARGB(255, 237, 151, 180),
              Color.fromARGB(255, 249, 171, 165),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topCenter,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContainerSatu()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 216, 157, 226)),
            child: Text(
              'Pindah Ke halaman 1',
              style: TextStyle(color: Colors.pink.shade50),
            ),
          ),
        ),
      ),
    );
  }
}
