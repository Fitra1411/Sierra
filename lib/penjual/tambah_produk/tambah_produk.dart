import 'package:flutter/material.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Tambahproduk1 extends StatefulWidget {
  const Tambahproduk1({super.key});

  @override
  State<Tambahproduk1> createState() => _Tambahproduk1State();
}

class _Tambahproduk1State extends State<Tambahproduk1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 57,
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10 ,bottom: 49),
              decoration: BoxDecoration(
                color: pink_004,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                    color: pink_006,
                  ),
                  const Text(
                    'Tambah Produk',
                    style: TextStyle(
                      fontFamily: 'OutfitSemiBold',
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 77,
              margin: const EdgeInsets.only(left: 10,right: 10,bottom: 14),
              decoration: BoxDecoration(
                border: Border.all(
                  color: pink_002,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom:1,left: 8,top: 9,),
                    child: Text(
                      'Nama Produk',
                      style: TextStyle(
                        fontFamily: 'InterBold',
                        fontSize: 12,
                        color: pink_002,
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Tambahkan Nama Produk',
                      hintStyle: TextStyle(
                        fontFamily: 'InterRegular',
                        fontSize: 12,
                      ),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 8),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 77,
              margin: const EdgeInsets.only(left: 10,right: 10,bottom: 14),
              decoration: BoxDecoration(
                border: Border.all(
                  color: pink_002,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom:1,left: 8,top: 9,),
                    child: Text(
                      'Deskripsi Produk',
                      style: TextStyle(
                        fontFamily: 'InterBold',
                        fontSize: 12,
                        color: pink_002,
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Tambahkan Deskripsi Produk',
                      hintStyle: TextStyle(
                        fontFamily: 'InterRegular',
                        fontSize: 12,
                      ),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 8),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 77,
              margin: const EdgeInsets.only(left: 10,right: 10,bottom: 14),
              decoration: BoxDecoration(
                border: Border.all(
                  color: pink_002,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom:1,left: 8,top: 9,),
                    child: Text(
                      'Harga Satuan (Rp)',
                      style: TextStyle(
                        fontFamily: 'InterBold',
                        fontSize: 12,
                        color: pink_002,
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Masukkan Harga Produk',
                      hintStyle: TextStyle(
                        fontFamily: 'InterRegular',
                        fontSize: 12,
                      ),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 8),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 77,
              margin: const EdgeInsets.only(left: 10,right: 10,bottom: 14),
              decoration: BoxDecoration(
                border: Border.all(
                  color: pink_002,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom:1,left: 8,top: 9,),
                    child: Text(
                      'Kategori Produk',
                      style: TextStyle(
                        fontFamily: 'InterBold',
                        fontSize: 12,
                        color: pink_002,
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Masukkan Katogori Produk',
                      hintStyle: TextStyle(
                        fontFamily: 'InterRegular',
                        fontSize: 12,
                      ),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 8),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 77,
              margin: const EdgeInsets.only(left: 10,right: 10,bottom: 14),
              decoration: BoxDecoration(
                border: Border.all(
                  color: pink_002,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom:1,left: 8,top: 9,),
                    child: Text(
                      'Stok Produk',
                      style: TextStyle(
                        fontFamily: 'InterBold',
                        fontSize: 12,
                        color: pink_002,
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Masukkan Jumlah Stok Produk',
                      hintStyle: TextStyle(
                        fontFamily: 'InterRegular',
                        fontSize: 12,
                      ),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 8),
                    ),
                  ),
                ],
              ),
            ),
            Container(
               width: double.infinity,
              height: 77,
              margin: const EdgeInsets.only(left: 10,right: 10,bottom: 14),
              decoration: BoxDecoration(
                border: Border.all(
                  color: pink_002,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Image.asset('assets/images/Vector.png',width: 30,height: 30,),
                  ),
                  Text(
                    'Tambahkan Foto Produk',
                    style: TextStyle(
                      fontFamily: 'InterBold',
                      fontSize: 12,
                      color: pink_002,
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}