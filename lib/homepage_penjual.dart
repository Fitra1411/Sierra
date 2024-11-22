import 'dart:async';

import 'package:flutter/material.dart';
import 'package:testing_aplikasi/brand/see_all.dart';
import 'package:testing_aplikasi/chatting/homechat_Penjual.dart';
import 'package:testing_aplikasi/keuangan/keuangan.dart';
import 'package:testing_aplikasi/keuangan/tarik_tunai.dart';
import 'package:testing_aplikasi/searching/searchpembeli.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Homepage_Penjual extends StatefulWidget {
  const Homepage_Penjual({super.key});

  @override
  State<Homepage_Penjual> createState() => _Homepage_PenjualState();
}

class _Homepage_PenjualState extends State<Homepage_Penjual> {
  final PageController _pageController = PageController();
  late Timer _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 4), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

@override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      appBar: PreferredSize(
  preferredSize: Size.fromHeight(250),
  child: Container(
    margin: EdgeInsets.fromLTRB(10,30,10,10), 
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: AppBar(
        backgroundColor: pink_004, 
        flexibleSpace: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2),
          child: Column(
            children: [
             Expanded(
               child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Expanded(child: Image.asset('assets/images/sierrastore2.png',height: 120,width: 100,)),
                   SizedBox(width: 20,),
                   Padding(
                     padding: const EdgeInsets.only(top: 20,right: 10),
                     child: Container(
                      
                      child: Row(
                        
                        children: [
                          
                          //Pesan.......................
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>HomeChat_Penjual()//Pesan
                              ));
                            },
                            child: Image.asset('assets/images/Messaging.png',height: 30,width: 30,)),
                          SizedBox(width: 10,),

                          //Search......................
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => SearchPembeli(),//Search
                              ));
                            },
                            child: Image.asset('assets/images/Search.png',height: 30,width: 30,)),
                          SizedBox(width: 10,),
                        ],
                      ),
                     ),
                   )
                 ],
                 
               ),
             ),
              Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: pink_006,
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Uang()//Isi Saldo
                        ));
                      },
                      child: Row(
                        children: [
                          Image.asset('assets/images/icon more/UI/Wallet.png',width: 50,height:50,),
                          Text("Dompet Saya",
                            style: TextStyle(
                              color:Color( 0XFFF05A7E ),
                              fontFamily: 'PoppinsMedium',
                              fontWeight: FontWeight.bold,
                              fontSize: 13),)
                        ], 
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      height: double.infinity,
                      width: 2,
                      color: Color(0XFFFF7C9C),
                      margin: EdgeInsets.all(9),),
                    SizedBox(width: 5,),
                    
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>TarikTunai() //Voucher
                        ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset('assets/images/icon more/UI/Card Payment.png',width: 50,height:50,),
                          SizedBox(width: 5,),
                          Text("Tarik Tunai",
                            style: TextStyle(
                              color:Color( 0XFFF05A7E ),
                              fontFamily: 'PoppinsMedium',
                              fontWeight: FontWeight.bold,
                              fontSize: 13),)
                        ],
                      ),
                    ),


                  ],
                ),
                 )
            ],
          ),
        ),
      ),
    ),
  ),
),

body: SingleChildScrollView(
  scrollDirection: Axis.vertical,
  child: Column(
    children: [
      //BANNER.......................
      Column(
        children: [
          SizedBox(
            height: 100,
            child: PageView(
              controller: _pageController,
              children: [
              Image.asset('assets/images/homepage/banner01.png',height: 100,),
              Image.asset('assets/images/homepage/banner02.png',height: 100,),
              Image.asset('assets/images/homepage/banner03.png',height: 100,),
            ],),
          ),
          SizedBox(height: 15,)
        ],
      ),

      // //SeeAll.......................
      Padding(
        padding: const EdgeInsets.only(right: 30, bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:[ GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>SeeAll()));//SeeAll
            },
            child: Text("See All...",
            style: TextStyle(color: pink_002,fontFamily: 'OutfitRegular',fontSize: 14,fontWeight: FontWeight.bold),),
          ),
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset('assets/images/homepage/wardah.png'),
            width: 60,height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),color: Colors.white,
            ),
          ),
          SizedBox(width: 15,),
          Container(
            child: Image.asset('assets/images/homepage/emina.png'),
            width: 60,height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),color: Colors.white,
            ),
          ),
          SizedBox(width: 15,),
          Container(
            child: Image.asset('assets/images/homepage/focallure.png'),
            width: 60,height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),color: Colors.white,
            ),
          ),
          SizedBox(width: 15,),
          Container(
            child: Image.asset('assets/images/homepage/somethinc.png'),
            width: 60,height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),color: Colors.white,
            ),
          ),
        ],
      ),

      //Recomendation...................
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 10),
            child: Text("Recomendation...",
            style: TextStyle(color: pink_002,fontFamily: 'OutfitRegular',fontSize: 14,fontWeight: FontWeight.bold),),
          ),
        ],
      ),

// PRODUK.......................
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Column(
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                      _buildInfoContainer('assets/images/produk/emina/emina blush.jpg','test', 'Rp. 18.0000', Icons.shopping_cart,'999 Terjual'),
                      _buildInfoContainer('assets/images/Add Basket.png','test1', 'Rp. 18.0000', Icons.shopping_cart,'999 Terjual'),
                      
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                      _buildInfoContainer('assets/images/Add Basket.png','test 02', 'Rp. 18.000', Icons.shopping_cart,'999 Terjual'),
                      _buildInfoContainer('assets/images/Add Basket.png','emina', 'Rp. 18.000', Icons.shopping_cart,'999 Terjual'),
                      
                ],
              ),

               
              SizedBox(height: 50,)
            ],
          ),
        ),
      )
      
    ],
  ),
),

    );
  }
}
Widget _buildInfoContainer(String images,String title, String value, IconData icon,String data) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(7, 10, 7, 10),
    child: Container(
      width: 155,
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Container(
                                margin: EdgeInsets.fromLTRB(7,7,7,3),
                                decoration: BoxDecoration(
                                  border: Border.symmetric(
                                    vertical: BorderSide(color: Colors.grey),
                                    horizontal:BorderSide(color: Colors.grey),),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Image.asset(images, width: 145,height: 113,)),
          SizedBox(height: 10),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 8,
                    fontFamily: 'OpenSansBold',
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  value,
                  style: TextStyle(
                    color: pink_004,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSansBold',
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,bottom: 10),
            child: Row(
              children: [
                Icon(icon,color: fontAbu,size: 16,),
                Text(data, style: TextStyle(fontSize: 11,color: fontAbu),)
              ],
            ),
          ),
        ],
      ),
    ),
  );
}