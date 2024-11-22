import 'package:flutter/material.dart';
import 'package:testing_aplikasi/views/login01.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFEFEF),
      body: Column(
        children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>LoginScreen()));
                },
              child:  Padding(
                padding: const EdgeInsets.only( right: 50,top: 80),
                child: Text("Skip",
                style: const TextStyle(
                  color: Color (0XFFABABAB), fontFamily: 'OutfitRegular', fontSize: 16,
                        decoration: TextDecoration.underline, decorationColor: Color (0XFFABABAB))),
),),
          ],
        ) ,
        Expanded(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,bottom: 10),
                child: Image.asset('assets/images/sierrastore.png',width: 200,height: 200,),
              ),
            ],
          ),
        ),
          const Text(
            " Kami menyediakan berbagai jenis Make-Up \ndari berbagai brand yang anda sukai.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0XFFF05A7E),
                fontFamily: 'OutfitRegular',
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: const Text(
              " Ayo Cek Sekarang!!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0XFFF05A7E),
                  fontFamily: 'OutfitRegular',
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Image.asset('assets/images/live01.png',width: 300, height: 300,)),
SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>LoginScreen()));
                },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Container(
                  width: 100,
                  height: 38,
                  decoration: BoxDecoration(
                    color: Color(0XFF921A40),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: const Center(
                    child: Text("Finish",
                  style: TextStyle(color: Colors.white,fontFamily: 'InterBold',fontWeight: FontWeight.bold,fontSize: 14))),
                  margin: const EdgeInsets.all(10)
                ),
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}