import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testing_aplikasi/NavBar/navbar.dart';
import 'package:testing_aplikasi/homepage.dart';
import 'package:testing_aplikasi/homepage_penjual.dart';
import 'package:testing_aplikasi/keuangan/keuangan.dart';
import 'package:testing_aplikasi/keuangan/tarik_tunai.dart';
import 'package:testing_aplikasi/penjual/pesanan/perlu_dikirim.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class MorePenjual extends StatefulWidget {
  const MorePenjual({super.key});

  @override
  State<MorePenjual> createState() => _MorePenjualState();
}

class _MorePenjualState extends State<MorePenjual> {
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
                    Container(
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
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5,0,5,0),
                            child: Image.asset('assets/images/icon more/UI/New Store.png',width: 20,height: 20,),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Navbar()));
                            },
                            child: Text('Belanja',style: TextStyle(fontFamily: 'OutfitRegular',color: pink_002,fontSize: 12),))
                        ],
                      ),
                      
                    ),
                    Expanded(child: SizedBox(width: 10,)),
                    IconButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Homepage_Penjual()));}, 
                      icon: Image.asset('assets/images/Messaging.png',width: 30,height: 30,)),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: IconButton(
                        onPressed: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Homepage_Penjual()));}, 
                        icon: Image.asset('assets/images/Settings.png',width: 30,height: 30,)),
                    )
                  
                  ],
                ),
                Expanded(child: SizedBox(height: 5,)),

                // DATA USER
                Padding(
                  padding: const EdgeInsets.only(left: 20,bottom: 20),
                  child: Row(
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
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: pink_006,
                    border: Border.all(color: pink_003)
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    // Dompet Saya.......................
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

                    Container(
                      height: double.infinity,
                      width: 2,
                      color: Color(0XFFFF7C9C),
                      margin: EdgeInsets.all(9),),

                    
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

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderPage()));
                  },
                  child: Container(
                    
                    width: double.infinity,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(171, 218, 218, 218),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: pink_002)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 60,
                          height: double.infinity,
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          decoration: BoxDecoration(
                            color: pink_005,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Perlu dikirim',
                                style: TextStyle(
                                  fontFamily: 'OutfitRegular',
                                  fontSize: 8
                                ),),
                              
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          height: double.infinity,
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          decoration: BoxDecoration(
                            color: pink_005,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Yang dikirim',
                                style: TextStyle(
                                  fontFamily: 'OutfitRegular',
                                  fontSize: 8
                                ),),
                              
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          height: double.infinity,
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          decoration: BoxDecoration(
                            color: pink_005,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Ulasan',
                                style: TextStyle(
                                  fontFamily: 'OutfitRegular',
                                  fontSize: 8
                                ),),
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Uang()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 25,top: 10),
              child: Row(
                children: [
                  Image.asset('assets/images/icon more/UI/Card Wallet.png',width: 20,height: 29,),
                  Text('Keuangan',style: TextStyle(
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
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Image.asset('assets/images/icon more/UI/Location.png',width: 20,height: 29,),
                Text('Alamat Toko',style: TextStyle(
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
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Image.asset('assets/images/icon more/UI/Logout.png',width: 20,height: 29,),
                Text('Keluar Akun',style: TextStyle(
                  fontFamily: 'OutfitRegular ',
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
        ],
      ),
    );
  }
}