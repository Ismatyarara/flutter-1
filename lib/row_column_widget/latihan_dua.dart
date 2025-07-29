import 'package:flutter/material.dart';
import 'package:isma_project/main_layout.dart';

class LatihanDua extends StatelessWidget {
  const LatihanDua({super.key});

  Widget buildTestimonialCard(String name, String email, String message) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white, // card background putih
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.format_quote, color: Colors.pink),
          const SizedBox(height: 8),
          Text(message,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 14,
              )),
          const SizedBox(height: 10),
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.pink,
                radius: 24,
                child: Icon(Icons.person, color: Colors.white),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.pink)),
                    Text.rich(
                      TextSpan(
                        children: [
                          const WidgetSpan(
                            child:
                                Icon(Icons.email, size: 14, color: Colors.grey),
                          ),
                          const WidgetSpan(child: SizedBox(width: 4)),
                          TextSpan(
                            text: email,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Testimoni dari Klien Kami 💬✨',
      body: Container(
        color: const Color(0xFFF8C6D4), // pink soft background
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Pendapat Mereka, Kebanggaan Kami 🏆💬',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
                decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: buildTestimonialCard(
                'Algis Gentala Samudra',
                'agiss@gmail.com',
                'Aplikasinya benar-benar mempermudah pekerjaan kami! Tampilan elegan dan antarmuka intuitif sangat menyenangkan.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
