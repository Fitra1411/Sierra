import 'package:flutter/material.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Konfirmasicod extends StatefulWidget {
  const Konfirmasicod({super.key});

  @override
  State<Konfirmasicod> createState() => _KonfirmasicodState();
}

class _KonfirmasicodState extends State<Konfirmasicod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 350),
            child: Image.asset(
              'assets/Ellipse 1.png',
              height: 60,
              width: 60,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'KONFIRMASI PEMBAYARAN\n                    COD',
              style: TextStyle(color: pink_002),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/Logistics-rafiki.png',
                height: 300,
                width: 300,
              ),
            ),
          ),
          Text(
            'ID transaksi : 0000',
            style: TextStyle(color: pink_004),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Produk Kamu Sedang Dikirim',
            style: TextStyle(color: pink_002, fontSize: 19),
          ),
          Center(
            child: Text(
              '               Silakan membayar biaya sebesar\nRp. 150.000 kepada kurir saat barang diterima',
              style: TextStyle(color: pink_004, fontSize: 12),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: pink_003),
                    borderRadius: BorderRadius.circular(20)),
                height: 45,
                width: 215,
                child: Center(
                  child: Text(
                    'Riwayat Pesanan',
                    style: TextStyle(color: pink_004),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: pink_003),
                    width: 215,
                    height: 45,
                    child: Center(
                        child: Text(
                      'Beranda',
                      style: TextStyle(color: Colors.white),
                    )),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
