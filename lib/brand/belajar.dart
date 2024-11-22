import 'package:flutter/material.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Beriulasan0 extends StatefulWidget {
  const Beriulasan0({super.key});

  @override
  State<Beriulasan0> createState() => _Beriulasan0State();
}

class _Beriulasan0State extends State<Beriulasan0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Container(
          margin: EdgeInsets.all(20),
          
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: AppBar(
              backgroundColor: pink_004,
              title: const Text('Beri Ulasan',
              style: TextStyle(color: Colors.white,
              fontFamily:'InterBold'
              ),),
            ),
          ),
        ),
      ),

      body: Center(
        child: Container(
          width: 1000,
          height: 1000,
          color:Colors.white,
          alignment: Alignment.center,
          child: const Text('Masukan Komentar',style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),),
        ),
      ),
    );
  }
}