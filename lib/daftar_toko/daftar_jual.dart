import 'package:flutter/material.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class DaftarJual extends StatelessWidget {
  const DaftarJual({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/amico.png',width: 300,height: 300,),
            SizedBox(height: 20),
            Text(
              'Belum punya Toko?',
              style: TextStyle(
                fontFamily: 'OutfitSemiBold',
                fontSize: 17,
                color: pink_002
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 70,right: 70,top: 10),
              child: Text(
                'Ayo daftarkan diri anda dan mulai berjualan di Toko anda sendiri!',
                style: TextStyle(
                  fontFamily: 'OutfitRegular',
                  fontSize: 12,
                  color: pink_004
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 160,
              height: 45,
              child: Center(
                child: Text(
                  'Daftar Sekarang',
                  style: TextStyle(
                    fontFamily: 'OutfitSemiBold',
                    fontSize: 15,
                    color: pink_006
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: pink_002,
                borderRadius: BorderRadius.circular(20)
              ),
            )
          
          ]
        ),
      ),
    );
  }
}