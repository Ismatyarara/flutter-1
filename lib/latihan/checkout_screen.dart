import 'package:flutter/material.dart';
import 'package:isma_project/main_layout.dart';

class CheckoutScreen extends StatelessWidget {
  final Map<String, dynamic> product;
  final int quantity;
  final String buyerName;
  final String note;

  const CheckoutScreen({
    super.key,
    required this.product,
    required this.quantity,
    required this.buyerName,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    int total = product['price'] * quantity;

    return MainLayout(
      title: 'Checkout',
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          color: Colors.pink.shade50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  product['image'],
                  height: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 16),
                Text(
                  product['name'],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                const SizedBox(height: 8),
                Text('Jumlah: $quantity'),
                Text('Nama Pembeli: $buyerName'),
                if (note.isNotEmpty) Text('Catatan: $note'),
                const SizedBox(height: 20),
                Text(
                  'Total Harga: Rp$total',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  icon: const Icon(Icons.check),
                  label: const Text('Konfirmasi'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        title: const Text('Berhasil!'),
                        content:
                            const Text('Pesanan kamu sudah dikonfirmasi 💖'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
                              Navigator.pop(context);
                            },
                            child: const Text('Oke'),
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
