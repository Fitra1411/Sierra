import 'package:flutter/material.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Konfrimasipayment extends StatefulWidget {
  const Konfrimasipayment({super.key});

  @override
  State<Konfrimasipayment> createState() => _KonfrimasipaymentState();
}

class _KonfrimasipaymentState extends State<Konfrimasipayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                'KONFIRMASI PEMBAYARAN',
                style: TextStyle(color: pink_002, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/E-Wallet-pana.png',
            height: 300,
            width: 300,
          ),
          Text(
            'Terimakasih Sudah Berbelanja di\n                 Sierra Store.',
            style: TextStyle(color: pink_003),
          ),
          SizedBox(
            height: 80,
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
                    height: 45,
                    width: 215,
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
