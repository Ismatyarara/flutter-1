import 'package:flutter/material.dart';
import 'package:isma_project/form_widget/output_screen.dart';
import 'package:isma_project/main_layout.dart';

class InputFormScreen extends StatefulWidget {
  const InputFormScreen({super.key});

  @override
  State<InputFormScreen> createState() => _InputFormScreenState();
}

class _InputFormScreenState extends State<InputFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController tglLahirController = TextEditingController();

  String? _jk = '';
  String? _agama = '';
  String? _error;

  final List<String> agamaList = [
    "Islam",
    "Kristen",
    "Katolik",
    "Hindu",
    "Budha",
    "Konghucu"
  ];

  @override
  void initState() {
    super.initState();
    _error = null;
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Input Form",
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Formulir Biodata",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: namaController,
                decoration: const InputDecoration(
                  labelText: "Nama Lengkap",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) return "Input nama";
                  return null;
                },
              ),
              const SizedBox(height: 16),
              const Text("Jenis Kelamin"),
              Row(
                children: [
                  Radio<String>(
                    value: "Laki-laki",
                    groupValue: _jk,
                    onChanged: (value) {
                      setState(() {
                        _jk = value;
                        _error = null;
                      });
                    },
                  ),
                  const Text("Laki-laki"),
                  Radio<String>(
                    value: "Perempuan",
                    groupValue: _jk,
                    onChanged: (value) {
                      setState(() {
                        _jk = value;
                        _error = null;
                      });
                    },
                  ),
                  const Text("Perempuan"),
                ],
              ),
              if (_error != null)
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    _error!,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              const SizedBox(height: 16),
              TextFormField(
                controller: tglLahirController,
                readOnly: true,
                decoration: const InputDecoration(
                  labelText: "Tanggal Lahir",
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
                  if (value!.isEmpty) return "Input Tanggal Lahir";
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  labelText: "Agama",
                  border: OutlineInputBorder(),
                ),
                items: agamaList
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _agama = value;
                  });
                },
                validator: (value) {
                  if (value == null || (value as String).isEmpty) {
                    return "Pilih agama";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _submit,
                child: const Text("Simpan"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      if (_jk == null || _jk!.isEmpty) {
        setState(() {
          _error = "Pilih jenis kelamin";
        });
        return;
      }

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OutputFormScreen(
            nama: namaController.text,
            jk: _jk!,
            tglLahir: tglLahirController.text,
            agama: _agama!,
          ),
        ),
      );
    }
  }
}
