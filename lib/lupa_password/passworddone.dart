import 'package:flutter/material.dart';
import 'package:testing_aplikasi/utils/colors.dart';
import 'package:testing_aplikasi/views/login01.dart';

class PasswordDone extends StatelessWidget {
  const PasswordDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Image.asset('assets/images/Checkmark.png',width: 150,height: 150,),
        SizedBox(height: 10,),
        Text("Daftar Akun berhasil!",
        style: TextStyle(
          color: pink_003,
          fontFamily: 'OutfitRegular',
          fontSize: 18,),),
        Text("Silahkan Login untuk masuk ke beranda.",
        style: TextStyle(
          color: pink_003,
          fontFamily: 'OutfitRegular',
          fontSize: 14,),),

        SizedBox(height: 50,),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>LoginScreen()));
          },
          child: Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              color: pink_001,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text("Login",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'InterBold',
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),),
            ),
            margin: EdgeInsets.all(10),
          ),
        )
          ])
      ),
    );
  }
}