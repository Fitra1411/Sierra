import 'package:flutter/material.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class OpsiPengiriman extends StatefulWidget {
  const OpsiPengiriman({Key? key}) : super(key: key);

  @override
  State<OpsiPengiriman> createState() => _OpsiPengirimanState();
}

class _OpsiPengirimanState extends State<OpsiPengiriman> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006, // Sesuaikan warna background
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new), // Menambahkan ikon kembali
          onPressed: () {
            Navigator.pop(context); // Aksi untuk kembali ke halaman sebelumnya
          },
        ),
        title: const Text('Opsi Pengiriman'),
        backgroundColor: pink_006,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pilih Jasa Pengiriman',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  buildShippingOption('Gojek', 'Rp0', 'Garansi tiba 12-14 Sep', 'assets/images/icon more/UI/GOJEK.png'),
                  buildShippingOption('Maxim', 'Rp0', 'Garansi tiba 12-14 Sep', 'assets/images/icon more/UI/MAXIM.png'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 50, // Membuat tombol Konfirmasi full width
              child: ElevatedButton(
                onPressed: () {
                  // Aksi untuk konfirmasi pengiriman
                  if (selectedOption != null) {
                    print("Pengiriman dipilih: $selectedOption");
                  } else {
                    print("Pilih pengiriman terlebih dahulu.");
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: pink_001,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Menghapus radius tombol
                  ),
                ),
                child: const Text('Konfirmasi'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildShippingOption(String name, String price, String guarantee, String imagePath) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: 40,
          height: 40,
        ),
        title: Text(name),
        subtitle: Text('$price - $guarantee'),
        trailing: Radio<String>(
          value: name,
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value;
            });
          },
          activeColor: pink_001,
        ),
      ),
    );
  }
}