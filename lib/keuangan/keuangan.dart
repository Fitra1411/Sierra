import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar_penjual.dart';
import 'package:testing_aplikasi/keuangan/pindahkan.dart';
import 'package:testing_aplikasi/keuangan/tarik_tunai.dart';
import 'package:testing_aplikasi/utils/colors.dart';


class Uang extends StatefulWidget {
  const Uang({super.key});

  @override
  State<Uang> createState() => _UangState();
}

class _UangState extends State<Uang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: pink_004,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(
                blurRadius: 10,
                color: fontAbu,
                offset: Offset(0, 4),
              ),]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: 
                (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext) => NavbarPenjual()));
                }, icon: Icon(Icons.arrow_back_ios ,size: 25,color: pink_006,)),

                Text('Keuangan', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: pink_006,fontFamily: 'OutfitBold'),),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
            margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: pink_006,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: pink_004, width: 2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/Banknotes.png',width: 40,height: 40,),
                SizedBox(width: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Saldo', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: pink_004,fontFamily: 'OutfitBold'),),
                    Text('Rp. 0', style: TextStyle( fontFamily: 'OutfitBold',fontSize: 12,color: pink_005),)
                  ],
                ),
              ],
            ),
          ),

                    Container(
            padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
            margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: pink_006,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: pink_004, width: 2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/icon more/UI/Wallet.png',width: 40,height: 40,),
                SizedBox(width: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dompet Saya', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: pink_004,fontFamily: 'OutfitBold'),),
                    Text('Rp. 0', style: TextStyle( fontFamily: 'OutfitBold',fontSize: 12,color: pink_005),)
                  ],
                ),
              ],
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>TarikTunai()));
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
              margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: pink_006,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: pink_004, width: 2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/icon more/UI/Card Payment.png',width: 40,height: 40,),
                  SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tarik Tunai', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: pink_004,fontFamily: 'OutfitBold'),),
                      Text(
                        'Tarik uang  di dompet \nanda melalui E-Wallet', 
                        style: TextStyle( fontFamily: 'OutfitBold',fontSize: 12,color: pink_005),)
                    ],
                  ),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>Pindahkan()));
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
              margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: pink_006,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: pink_004, width: 2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/icon more/UI/Exchange.png',width: 40,height: 40,),
                  SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pindahkan', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: pink_004,fontFamily: 'OutfitBold'),),
                      Text(
                        'Transfer uang anda\ndari dompet ke saldo', 
                        style: TextStyle( fontFamily: 'OutfitBold',fontSize: 12,color: pink_005),)
                    ],
                  ),
                ],
              ),
            ),
          ),


        ],
     ),
    );
  }
}