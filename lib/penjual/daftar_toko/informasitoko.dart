import 'package:flutter/material.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class InformasiToko extends StatefulWidget {
  const InformasiToko({super.key});

  @override
  State<InformasiToko> createState() => _InformasiTokoState();
}

class _InformasiTokoState extends State<InformasiToko> {
  bool isChecked = false;
  final TextEditingController _namaTokoController = TextEditingController();
  final TextEditingController _deskripsiTokoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: pink_004,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Informasi Toko',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'OutfitSemiBold',
                      ),
                    ),
                  ],
                ),
              ),

              // Foto Profil Toko
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 40, 0, 10),
                child: Row(
                  children: [
                    Text(
                      'Foto Profil Toko',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'OutfitRegular',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 65,
                width: 85,
                decoration: BoxDecoration(
                  color: fontAbu,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const SizedBox(height: 20),

              // Petunjuk Foto Toko
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Pastikan foto toko berada dalam bingkai foto, informasi tidak jelas, dan tidak buram.',
                      style: TextStyle(
                        fontFamily: 'OutfitRegular',
                        fontSize: 12,
                        color: fontAbu,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Nama Toko
              Padding(
                padding: const EdgeInsets.only(left: 40, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      'Nama Toko',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'OutfitRegular',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _namaTokoController,
                  decoration: InputDecoration(
                    hintText: 'Masukkan nama toko Anda',
                    hintStyle: TextStyle(
                      color: fontAbu,
                      fontSize: 12,
                      fontFamily: 'OutfitRegular',
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Deskripsi Toko
              Padding(
                padding: const EdgeInsets.only(left: 40, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      'Deskripsi Toko',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'OutfitRegular',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _deskripsiTokoController,
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText:
                        'Masukkan deskripsi dari toko Anda. Dapat berupa alamat detail, jenis produk yang dijual, dll.',
                    hintStyle: TextStyle(
                      color: fontAbu,
                      fontSize: 13,
                      fontFamily: 'OutfitRegular',
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              // Checkbox Persetujuan
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      activeColor: const Color(0xFF921A40),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "Saya menyetujui Syarat Ketentuan dan Kebijakan Privasi",
                      style: TextStyle(
                        fontFamily: 'OpenSansRegular',
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),

              // Tombol Aksi
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      // Aksi tombol Nanti
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: fontAbu,
                    ),
                    child: const Text(
                      "Nanti",
                      style: TextStyle(
                        fontFamily: "PoppinsMedium",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi tombol Selesai
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: pink_001,
                    ),
                    child: const Text(
                      "Selesai",
                      style: TextStyle(
                        fontFamily: "PoppinsMedium",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
