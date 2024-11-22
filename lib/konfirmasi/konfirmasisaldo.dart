import 'package:flutter/material.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Konfirmasisaldo extends StatefulWidget {
  const Konfirmasisaldo({super.key});

  @override
  State<Konfirmasisaldo> createState() => _KonfirmasisaldoState();
}

class _KonfirmasisaldoState extends State<Konfirmasisaldo> {
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
              'KONFIRMASI PEMBAYARAN\n               VIA SALDO',
              style: TextStyle(color: pink_002),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'assets/Payment Information-bro.png',
                height: 300,
                width: 300,
              ),
            ),
          ),
          Text(
            'ID transaksi : 0000',
            style: TextStyle(color: pink_004),
          ),
          Text(
            'Total : RP 150.000',
            style: TextStyle(color: pink_004),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Center(
              child: Container(
                width: 310,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: pink_005),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Dengan menekan tombol "Bayar Sekarang" berarti menyetujui pembayaran',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 110),
            child: Text(
              'Saldo Anda : Rp 750.000',
              style: TextStyle(color: pink_003, fontSize: 15),
            ),
          ),
          Center(
            child: Container(
              width: 310,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: pink_003),
              child: Center(
                  child: Text(
                'Bayar Rp 150.000',
                style: TextStyle(color: Colors.white, fontSize: 25),
              )),
            ),
          )
        ],
      ),
    );
  }
}
