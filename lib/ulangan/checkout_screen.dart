import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  final Map<String, dynamic> kursus;
  final int quantity;
  final String buyerName;
  final String note;

  const CheckoutScreen({
    super.key,
    required this.kursus,
    required this.quantity,
    required this.buyerName,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    int price = int.tryParse(kursus['price'].toString()) ?? 0;
    int total = price * quantity;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color: Colors.pink.shade50,
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kursus: ${kursus['judul']}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                const SizedBox(height: 8),
                Text('Pembeli: $buyerName'),
                if (note.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text('Catatan: $note'),
                ],
                const SizedBox(height: 8),
                Text('Jumlah: $quantity'),
                Text('Harga per kursus: Rp$price'),
                const Divider(height: 30),
                Text(
                  'Total Bayar: Rp$total',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          title: const Text('Pembayaran Berhasil'),
                          content: const Text(
                              'Terima kasih telah membeli kursus ini!'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context); // close dialog
                                Navigator.pop(context); // back to detail
                                Navigator.pop(context); // back to list
                              },
                              child: const Text('Selesai'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: const Text(
                      'Bayar Sekarang',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
