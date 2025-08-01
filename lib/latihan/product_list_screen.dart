import 'package:flutter/material.dart';
import 'package:isma_project/main_layout.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Blouse Pastel',
      'price': 85000,
      'image': 'https://picsum.photos/id/1011/300/300',
      'description':
          'Blouse warna pastel yang lembut dan nyaman dipakai sehari-hari.'
    },
    {
      'name': 'Hoodie Pinky',
      'price': 120000,
      'image': 'https://picsum.photos/seed/10/200',
      'description': 'Hoodie warna pink dengan bahan hangat dan desain simple.'
    },
    {
      'name': 'Rok Rempel',
      'price': 95000,
      'image': 'https://picsum.photos/seed/11/400',
      'description': 'Rok rempel gemes dengan model flowy dan warna kalem.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Produk Gemes',
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.70,
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductDetailScreen(product: product),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(16)),
                      child: Image.network(
                        product['image'],
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        product['name'],
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
                      'Rp${product['price']}',
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
