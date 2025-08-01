// gridview_example.dart
import 'package:isma_project/main_layout.dart';
import 'package:flutter/material.dart';

class GridProductPage extends StatelessWidget {
  const GridProductPage({super.key});

  final List<Map<String, String>> products = const [
    {
      'name': 'Strawberry Fig Delight Cake',
      'price': 'Rp120.000',
      'image':
          'data:image/jpeg;base64,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'
    },
    {
      'name': 'Rosy Macaron Dream Cake',
      'price': 'Rp220.000',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJNfUATa8E0LMS4AWkRweYZDHja-qIZQlqBPaXIvw3AkrgElx8mfDr5VL-jBQ_zEQUQPQ&usqp=CAU'
    },
    {
      'name': 'Choco-Berry Explosion Cake',
      'price': 'Rp320.000',
      'image':
          'https://theperfectcake.ae/cdn/shop/products/half-cake-dubai.jpg?v=1681656851'
    },
    {
      'name': 'Double Choco Crunch Cake',
      'price': 'Rp180.000',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXRwuLld5spW7O5gc75SMxZbnnMlkkYM2y4dMhgRicOyJnHGH-g3SpZYuzmQZosqzdsw0&usqp=CAU'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Grid View',
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[100],
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 6)
                ],
              ),
              child: Stack(
                children: [
                  // Background image
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child:
                          Image.network(product['image']!, fit: BoxFit.cover),
                    ),
                  ),
                  // Overlay
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ),
                  // Price & Name
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product['name']!,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text(product['price']!,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
