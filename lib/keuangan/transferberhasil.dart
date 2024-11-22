import 'package:flutter/material.dart';
import 'package:testing_aplikasi/keuangan/keuangan.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Berhasil extends StatefulWidget {
  const Berhasil({super.key});

  @override
  State<Berhasil> createState() => _BerhasilState();
}

class _BerhasilState extends State<Berhasil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(106, 162, 106, 0),
              child: Image.asset('assets/images/Checkmark.png'),
            ),
            const SizedBox(height: 20),
            Text(
              'gw muak anj',
              style: TextStyle(
                color: pink_004,
                fontFamily: 'Outfit',
                fontSize: 22.14,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 115),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Uang()),
                      );
                    },
              child: Container(
                height: 38,
                width: 135,
                decoration: BoxDecoration(
                  color: pink_002.withOpacity(0.56),
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Kembali',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}