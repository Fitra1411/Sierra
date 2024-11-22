import 'package:flutter/material.dart';
import 'package:testing_aplikasi/keuangan/keuangan.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class TarikTunai extends StatefulWidget {
  const TarikTunai({super.key});

  @override
  State<TarikTunai> createState() => _TarikTunaiState();
}

class _TarikTunaiState extends State<TarikTunai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006, // Background color
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Container(
            width: double.infinity,
            height: 60,
            margin: const EdgeInsets.only(left: 10, right: 10, top: 30),
            decoration: BoxDecoration(
              color: pink_004, // Header color
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Uang()));
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                  color: pink_006, // Icon color
                ),
                const Text(
                  'Tarik Tunai',
                  style: TextStyle(
                    fontFamily: 'OutfitSemiBold',
                    fontSize: 20,
                    color: Colors.white, // Text color
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height:20),

          // Amount Input Container
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white, // Input container color
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 16),
                Text(
                  'Masukkan Nominal Penarikan',
                  style: TextStyle(
                    fontFamily: 'OutfitSemiBold',
                    fontSize: 16,
                    color: Colors.grey, // Text color
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0) ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey), // Input border color
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Rp',
                        style: TextStyle(
                          fontFamily: 'OutfitSemiBold',
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: '100.000.000.000,00',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey, // Placeholder color
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const SizedBox(height: 10),

          // Payment Method Selection
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white, // Payment container color
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pilih Metode Penarikan',
                  style: TextStyle(
                    fontFamily: 'OutfitSemiBold',
                    fontSize: 16,
                    color: Colors.black, // Text color
                  ),
                ),
                const SizedBox(height: 5),
                // DANA payment method
                ListTile(
                  leading: Image.asset(
                    'assets/images/Pembayaran/Dana.png',
                    width: 36,
                    height: 36,
                  ),
                  title: const Text('DANA'),
                  subtitle: const Text('Bayar dengan DANA'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                ),
                const Divider(),
                // OVO payment method
                ListTile(
                  leading: Image.asset(
                    'assets/images/Pembayaran/OVO.png',
                    width: 36,
                    height: 36,
                  ),
                  title: const Text('OVO'),
                  subtitle: const Text('Bayar dengan OVO'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}