import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:isma_project/main_layout.dart';
import 'package:isma_project/ulangan/checkout_screen.dart';

class KursusDetailScreen extends StatefulWidget {
  final Map<String, dynamic> kursus;

  const KursusDetailScreen({super.key, required this.kursus});

  @override
  State<KursusDetailScreen> createState() => _KursusDetailScreenState();
}

class _KursusDetailScreenState extends State<KursusDetailScreen> {
  int quantity = 1;
  final nameController = TextEditingController();
  final noteController = TextEditingController();
  final TextEditingController tglLahirController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final int price = int.tryParse(widget.kursus['price'].toString()) ?? 0;
    final int total = price * quantity;

    // Format tanggal
    final String tanggal = DateFormat('dd MMMM yyyy').format(DateTime.now());

    return MainLayout(
      title: 'Detail Kursus',
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.pink.shade50,
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gambar Kursus
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      widget.kursus['image'],
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Judul
                  Text(
                    widget.kursus['judul'],
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Deskripsi
                  Text(
                    widget.kursus['description'],
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 16),

                  // Jumlah
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Jumlah: ', style: TextStyle(fontSize: 16)),
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          if (quantity > 1) {
                            setState(() => quantity--);
                          }
                        },
                      ),
                      Text('$quantity'),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          setState(() => quantity++);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Form Nama
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: 'Nama Pembeli',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Form Catatan
                  TextField(
                    controller: noteController,
                    decoration: InputDecoration(
                      labelText: 'Catatan (opsional)',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Total Harga
                  Text(
                    'Total: Rp$total',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Tanggal Hari Ini
                  TextFormField(
                    controller: tglLahirController,
                    readOnly: true,
                    decoration: const InputDecoration(
                      labelText: "Tanggal ",
                      border: OutlineInputBorder(),
                    ),
                    onTap: () async {
                      final picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      );

                      if (picked != null) {
                        setState(() {
                          tglLahirController.text =
                              "${picked.day}/${picked.month}/${picked.year}";
                        });
                      }
                    },
                    validator: (value) {
                      if (value!.isEmpty) return "Input Tanggal ";
                      return null;
                    },
                  ),

                  // Tombol Checkout
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
                        if (nameController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Nama pembeli harus diisi'),
                            ),
                          );
                          return;
                        }

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CheckoutScreen(
                              kursus: widget.kursus,
                              quantity: quantity,
                              buyerName: nameController.text,
                              note: noteController.text,
                            ),
                          ),
                        );
                      },
                      child: const Text(
                        'Checkout Sekarang',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
