import 'package:flutter/material.dart';
import 'package:isma_project/main_layout.dart';
import 'kursus_detail_screen.dart'; // Pastikan path benar

class KursusOnline extends StatelessWidget {
  const KursusOnline({super.key});

  final List<Map<String, dynamic>> kursus = const [
    {
      'judul': 'Flutter Dasar',
      'pengajar': 'Isma Tiara',
      'price': '120000',
      'level': 'Pemula',
      'description': 'Belajar membuat aplikasi Flutter dari nol.',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHHmDXdf9V4bhKUZMVGy14aWdVp8YmTJWETTIisydpcb2K8Rj-OUykTpos6vfA_9l3laM&usqp=CAU',
    },
    {
      'judul': 'UI Design',
      'pengajar': 'Nadia Ayu',
      'price': '150000',
      'level': 'Menengah',
      'description': 'Mendesain tampilan aplikasi dengan Figma.',
      'image':
          'https://png.pngtree.com/png-vector/20200310/ourlarge/pngtree-online-education-training-course-design-concept-vector-illustration-png-image_2158408.jpg',
    },
    {
      'judul': 'Backend Laravel',
      'pengajar': 'Rizal Aditya',
      'price': '180000',
      'level': 'Lanjut',
      'description': 'Membangun API dengan Laravel.',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS81jBw4n4aVP5YBP5MSrhaA5pHGavV1KV9iNoO5vzIVHXdydRf0_do60YYiO-TTc6HdFI&usqp=CAU',
    },
    {
      'judul': 'Machine Learning',
      'pengajar': 'Dina Putri',
      'price': '200000',
      'level': 'Expert',
      'description': 'Dasar-dasar machine learning dengan Python.',
      'image':
          'https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/10/03/48048197.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Kursus Online',
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: kursus.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.70,
          ),
          itemBuilder: (context, index) {
            final item = kursus[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => KursusDetailScreen(kursus: item),
                  ),
                );
              },
              child: Card(
                color: Colors.pink.shade50,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                      child: Image.network(
                        item['image'] as String,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        item['judul'] as String,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Rp${item['price']}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
