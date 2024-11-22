import 'package:flutter/material.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Konfirmasisaldo2 extends StatefulWidget {
  const Konfirmasisaldo2({super.key});

  @override
  State<Konfirmasisaldo2> createState() => _Konfirmasisaldo2State();
}

class _Konfirmasisaldo2State extends State<Konfirmasisaldo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 30,
                  color: pink_003,
                ),
                Expanded(
                    child: SizedBox(
                  width: 10,
                )),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: Image.asset(
                    'assets/Ellipse 1.png',
                    height: 60,
                    width: 60,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'PEMBAYARAN BERHASIL',
              style: TextStyle(color: pink_002, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/Payment Information-bro.png',
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
