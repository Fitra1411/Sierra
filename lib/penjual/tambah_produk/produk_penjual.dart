import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar_penjual.dart';
import 'package:testing_aplikasi/penjual/tambah_produk/tambah_produk.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Produkpenjual extends StatefulWidget {
  const Produkpenjual({super.key});

  @override
  State<Produkpenjual> createState() => _ProdukpenjualState();
}

class _ProdukpenjualState extends State<Produkpenjual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 57,
            margin: const EdgeInsets.only(left: 10, right: 10, top: 30 ,bottom: 30),
            decoration: BoxDecoration(
              color: pink_004,
              borderRadius: BorderRadius.circular(20),
            ),
            child:Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => NavbarPenjual()));
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                ),
                const Text(
                  'Produk Penjual',
                  style: TextStyle(
                    fontFamily: 'OutfitSemiBold',
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              const Center(
                child: Image(
                  image: AssetImage('assets/images/keranjang.png'),
                  width: 206,
                  height: 206,
                ),
              ),
              Center(
            child: Text(
              'Belum ada produk yang ditambahkan',
              style: TextStyle(
                fontFamily: 'OutfitSemiBold',
                fontSize: 12,
                color: pink_003,
              ),
            ),
          ),
          GestureDetector(
            onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Tambahproduk1()));
            },
            child: Center(
              child: Container(
                width: 150,
                height: 38,
                margin: EdgeInsets.only(top: 36,right: 35,left: 37),
                decoration: BoxDecoration(
                  color: pink_002,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'Tambah Produk',
                    style: TextStyle(
                      fontFamily: 'OutfitSemiBold',
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
 
            ],
          ),
                 ],
      ),
    );
  }
}