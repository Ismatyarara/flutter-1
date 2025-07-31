import 'package:flutter/material.dart';
import 'package:isma_project/main_layout.dart';
import 'materi_list_screen.dart';

class RoadmapScreen extends StatelessWidget {
  const RoadmapScreen({super.key});
  final List<Map<String, dynamic>> roadmap = const [
    {
      'kelas': 'Kelas 10',
      'materi': [
        {
          'title': 'Algoritma Dasar',
          'desc' : 'Langkah-langkah logis untuk menyelesaikan masalah.',
          'kategori': 'Pemrograman Dasar'
        },
        {
          'title': 'Pemrograman Dasar',
          'desc' : 'Pengenalan bahasa pemrograman seperti C atau Python.',
          'kategori': 'Pemrograman Dasar'
        },
        {
          'title': 'Algoritma',
          'desc' : 'Proses sistematis untuk menyelesaikan masalah secara bertahap.',
          'kategori': 'Pemrograman Dasar'
        },
        {
          'title': 'HTML & CSS',
          'desc' : 'HTML membentuk struktur web, CSS mempercantik tampilannya.',
          'kategori': 'Frontend'
        },
        {
          'title': 'Flowchart',
          'desc' : 'Diagram visual yang menggambarkan alur logika program.',
          'kategori': 'Analisis'
        },
        {
          'title': 'OOP',
          'desc' :'Pemrograman berbasis objek yang menggabungkan data dan fungsi.',
          'kategori': 'Pemrograman Dasar'
        },
        {
          'title': 'PHP',
          'desc' : 'Bahasa pemrograman untuk membuat web dinamis di sisi server.',
          'kategori': 'Backend'
        },
      ],
      'image': 'https://picsum.photos/seed/10/200'
    },
    {
      'kelas': 'Kelas 11',
      'materi': [
        {
          'title': 'Basis Data',
          'desc' : 'Sistem untuk menyimpan, mengelola, dan mengakses data.',
          'kategori': 'Database'
        },
        {
          'title': 'OOP',
          'desc' : 'Model pemrograman dengan objek sebagai dasar pembuatan program.',
          'kategori': 'Pemrograman Lanjut'
        },
        {
          'title': 'Laravel CRUD',
          'desc' : 'Operasi dasar: create, read, update, delete di Laravel.',
          'kategori': 'Backend'
        },
        {
          'title': 'UI/UX Figma',
          'desc' : 'Desain antarmuka dan pengalaman pengguna pakai Figma.',
          'kategori': 'UI/UX'
        },
        {
          'title': 'MySQL',
          'desc' : 'Sistem manajemen database relasional yang umum digunakan.',
          'kategori': 'Database'
        },
        {
          'title': 'Relasi',
          'desc' : 'Koneksi antar tabel dalam database: one-to-many, dll.',
          'kategori': 'Database'
        },
        {
          'title': 'JOIN',
          'desc' :'Teknik menggabungkan data dari tabel berbeda berdasarkan relasi.',
          'kategori': 'Database'
        },
        {
          'title': 'API',
          'desc' :'Jembatan antar aplikasi untuk bertukar data melalui internet.',
          'kategori': 'Backend'
        },
      ],
      'image': 'https://picsum.photos/seed/11/200'
    },
    {
      'kelas': 'Kelas 12',
      'materi': [
        {
          'title': 'Proyek Akhir',
          'desc' : 'Pengembangan aplikasi nyata sebagai hasil akhir pembelajaran.',
          'kategori': 'Proyek'
        },
        {
          'title': 'PKL',
          'desc' : 'Praktik langsung di dunia kerja untuk menambah pengalaman.',
          'kategori': 'Proyek'
        },
        {
          'title': 'Flutter',
          'desc' :'Framework dari Google untuk membuat aplikasi mobile multiplatform.',
          'kategori': 'Mobile'
        },
        {
          'title': 'REST API',
          'desc' : 'Standar komunikasi antar sistem menggunakan HTTP method.',
          'kategori': 'Backend'
        },
      ],
      'image': 'https://picsum.photos/seed/12/200'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Roadmap Belajar RPL',
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: roadmap.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            final item = roadmap[index];
            final kelas = item['kelas'];
            final imageUrl = item['image'];
            final materiList = item['materi'] as List<Map<String, String>>;

            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MateriListScreen(
                      kelas: kelas,
                      materiList: materiList,
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[100],
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 6),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.black.withOpacity(0.25),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: Text(
                        kelas,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          shadows: [
                            Shadow(
                              color: Colors.black38,
                              offset: Offset(0, 2),
                              blurRadius: 4,
                            )
                          ],
                        ),
                      ),
                    )
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
