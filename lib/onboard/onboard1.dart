import 'package:flutter/material.dart';
import 'package:testing_aplikasi/onboard/onboard2.dart';
import 'package:testing_aplikasi/views/login01.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color (0XFFFFEFEF),
      body:Column(
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>LoginScreen()));
                },
              child:  Padding(
                padding: const EdgeInsets.only(right: 50, top: 80),
                child: Text("Skip",
                style: const TextStyle(
                  color: Color (0XFFABABAB), fontFamily: 'OutfitRegular', fontSize: 16,
                        decoration: TextDecoration.underline, decorationColor: Color (0XFFABABAB))),
),),
          ],
        ) , 

         SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset('assets/images/welcome.png'),
          ),
          const Text(
            " Kami hadir untuk mempercantik hari Anda dengan koleksi\nMake-Up terbaik yang akan memancarkan pesona anda.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Color (0XFFF05A7E),
            fontFamily: 'OutfitRegular',
            fontSize: 12,
            fontWeight: FontWeight.bold),
          ),

          Expanded(child: Image.asset('assets/images/makeup01.png',width: 400,height: 400,)),

          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>const WelcomeScreen()));
              },
            child: Container(
              width: 100,
              height: 38,
              decoration: BoxDecoration(
                color: Color(0XFF921A40),
                borderRadius: BorderRadius.circular(50)
              ),
              child: const Center(
                child: Text("Next",
              style: TextStyle(color: Colors.white,fontFamily: 'InterBold',fontWeight: FontWeight.bold,fontSize: 14))),
              margin: const EdgeInsets.all(10)
            ),
            ),
          ),
          
        ],
        ),
      );
  }
}