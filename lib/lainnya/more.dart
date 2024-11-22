import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar.dart';
import 'package:testing_aplikasi/NavBar/navbar_penjual.dart';
import 'package:testing_aplikasi/chatting/homechat.dart';
import 'package:testing_aplikasi/homepage_penjual.dart';
import 'package:testing_aplikasi/isi_saldo/isi_saldo.dart';
import 'package:testing_aplikasi/keranjang/keranjang.dart';
import 'package:testing_aplikasi/lainnya/mengikuti.dart';
import 'package:testing_aplikasi/lainnya/setting.dart';
import 'package:testing_aplikasi/penilaian/empty_rating.dart';
import 'package:testing_aplikasi/tabBar/tiadapesanan.dart';
import 'package:testing_aplikasi/utils/colors.dart';
import 'package:testing_aplikasi/views/logout.dart';

class MorePembeli extends StatefulWidget {
  const MorePembeli({super.key});

  @override
  State<MorePembeli> createState() => _MorePembeliState();
}

class _MorePembeliState extends State<MorePembeli> {
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
          padding: EdgeInsets.symmetric(vertical: 2),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>NavbarPenjual()
                        ));
                      },
                      child: Container(
                        width: 120,
                        height: 30,
                        decoration: BoxDecoration(
                          color: pink_006,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20)),
                          border: Border.all(color: pink_002,)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/icon more/UI/New Store.png',width: 20,height: 20,),
                            Text('Berjualan',style: TextStyle(fontFamily: 'OutfitRegular',color: pink_002,fontSize: 12),)
                          ],
                        ),
                        
                      ),
                    ),
                    Expanded(child: SizedBox(width: 10,)),

                    // CHATTING DR PEMBELI
                    IconButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>HomeChatPembeli()));}, 
                      icon: Image.asset('assets/images/Messaging.png',width: 30,height: 30,)),

                    // KERANJANG
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>FillCart()//Keranjang
                        ));
                        },
                          child: Image.asset('assets/images/Add Basket.png',height: 30,width: 30,)),
                    SizedBox(width: 10,),

                    // SETTINGS
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: IconButton(
                        onPressed: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Settings()));}, 
                        icon: Image.asset('assets/images/Settings.png',width: 30,height: 30,)),
                    )
                  
                  ],
                ),
                Expanded(child: SizedBox(height: 5,)),

                // DATA USER
                Padding(
                  padding: const EdgeInsets.only(left: 20,bottom: 20),
                  child: 
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/images/zikra.png'),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Username',
                            style: TextStyle(
                              fontFamily: 'OutfitBold',
                              fontSize: 12,
                              color: Colors.white),),
                          Text('Email',
                            style: TextStyle(
                              fontFamily: 'OutfitRegular',
                              fontSize: 10,
                              color: Colors.white)),
                          Text('Nomor Hp',
                            style: TextStyle(
                              fontFamily: 'OutfitRegular',
                              fontSize: 10,
                              color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ),
              ]),
          ))
            ),
          ),
        ),
      ),
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Container(
                    width: double.infinity,
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: pink_006,
                      border: Border.all(color: pink_004)
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
        
                      // Saldo.......................
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>IsiSaldo()//Isi Saldo
                          ));
                        },
                        child: Row(
                          children: [
                            Image.asset('assets/images/Banknotes.png',width: 50,height:50,),
                            Text("Saldo",
                              style: TextStyle(
                                color:Color( 0XFFF05A7E ),
                                fontFamily: 'PoppinsMedium',
                                fontWeight: FontWeight.bold,
                                fontSize: 15),)
                          ], 
                        ),
                      ),
                      SizedBox(width: 12,),
                      Container(
                        height: double.infinity,
                        width: 2,
                        color: Color(0XFFFF7C9C),
                        margin: EdgeInsets.all(9),),
                      SizedBox(width: 8,),
                      
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=> Navbar() //Voucher
                          ));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset('assets/images/PNR Code.png',width: 50,height:50,),
                            Text("MyVoucher",
                              style: TextStyle(
                                color:Color( 0XFFF05A7E ),
                                fontFamily: 'PoppinsMedium',
                                fontWeight: FontWeight.bold,
                                fontSize: 15),)
                          ],
                        ),
                      ),
        
        
                    ],
                  ),
                   ),
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 24,top: 10),
                    child: Text(
                      'Pesanan Anda',
                      style: TextStyle(
                        color: pink_002,
                        fontFamily: 'OutfitRegular',
                        fontSize: 14,
                        ),    
                    ),
                  ),
        
                  Container(
                    
                    width: double.infinity,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(171, 218, 218, 218),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: pink_002)
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Pesanan1()//Pesanan
                        ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/icon more/UI/Wallet02.png',width: 20,height: 20,),
                              Text('Belum Bayar',style: TextStyle(
                                fontFamily: 'OutfitRegular',
                                fontSize: 10
                              ),)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/icon more/UI/Packing.png',width: 20,height: 20,),
                              Text('Dikemas',style: TextStyle(
                                fontFamily: 'OutfitRegular',
                                fontSize: 10
                              ),)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/icon more/UI/Delivery.png',width: 20,height: 20,),
                              Text('Dikirim',style: TextStyle(
                                fontFamily: 'OutfitRegular',
                                fontSize: 10
                              ),)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/icon more/UI/Paid.png',width: 20,height: 20,),
                              Text('Selesai',style: TextStyle(
                                fontFamily: 'OutfitRegular',
                                fontSize: 10
                              ),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
            
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Image.asset('assets/images/icon more/UI/Location.png',width: 20,height: 29,),
                  ),
                  Text('Alamat Saya',style: TextStyle(
                    fontFamily: 'OutfitRegular',
                    fontSize: 12
                  ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 1,
              color: pink_004,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Penilaian1()//Setting
                ));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Image.asset('assets/images/icon more/UI/Rating.png',width: 20,height: 29,),
                    ),
                    Text('Beri Penilaian',style: TextStyle(
                      fontFamily: 'OutfitRegular',
                      fontSize: 12
                    ),)
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 1,
              color: pink_004,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Mengikuti2()//Setting
                ));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Image.asset('assets/images/icon more/UI/Favourite Mobile Shop.png',width: 20,height: 29,),
                    ),
                    Text('Toko Diikuti',style: TextStyle(
                      fontFamily: 'OutfitRegular',
                      fontSize: 12
                    ),)
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 1,
              color: pink_004,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Logout()
                ));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Image.asset('assets/images/icon more/UI/Logout.png',width: 20,height: 29,),
                    ),
                    Text('Keluar Akun',style: TextStyle(
                      fontFamily: 'OutfitRegular ',
                      fontSize: 12
                    ),)
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 1,
              color: pink_004,
            ),

            Padding(padding: EdgeInsets.only(bottom: 30))
          ],
        ),
      ),
    );
  }
}
