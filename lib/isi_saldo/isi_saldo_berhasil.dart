import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class IsiSaldoBerhasil extends StatelessWidget {
  const IsiSaldoBerhasil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/payment.png',width: 300,height: 300,),
            SizedBox(height: 15,),
            Text(
              'Isi Saldo Telah Berhasil',
              style: TextStyle(
                fontFamily: 'OutfitRegular',
                fontSize: 17,
                color: pink_002,
              ),),
            SizedBox(height: 10,),
            Text('Silahkan kembali ke beranda',
              style: TextStyle(
                fontFamily: 'OutfitRegular',
                fontSize: 12,
                color: pink_003,
              ),),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 40,
                width: 210,
                decoration: BoxDecoration(
                  color: pink_003,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Navbar()));
                  }, 
                  child: Text('Beranda',
                    style: TextStyle(
                      fontFamily: 'OutfitRegular',
                      fontSize: 17,
                      color: pink_006,
                    ),),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}