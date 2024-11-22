import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar.dart';
import 'package:testing_aplikasi/NavBar/navbar_penjual.dart';
import 'package:testing_aplikasi/profil/profil.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: pink_004,
                borderRadius: BorderRadius.circular(20
                ),
              ),
              margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: Row(
                children: [
                          IconButton(
                            onPressed: (){
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Navbar()));
                            },
                            icon: Icon(Icons.arrow_back_ios,color: pink_006,size: 25,),
                            ),
                  SizedBox(width: 5),
                  Text(
                    "Pengaturan Akun",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PoppinsBold',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Akun Saya',style: TextStyle(
                  color: fontAbu,
                  fontSize: 14,
                  fontFamily: 'PoppinsBold'
                ),),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10,),
                decoration: BoxDecoration(
                  color: fontAbu,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: pink_002, width: 2)
                ),
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                          },
                          child: Text('Akun Profil',style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'InterBold'
                          ),),
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Divider(
                      color: pink_001,
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('Alamat Saya',style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'InterBold'
                        ),)
                      ],
                    ),
                     SizedBox(height: 5,),
                    Divider(
                      color: pink_001,
                    ),
                    SizedBox(height: 5,),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>NavbarPenjual()));
                          },
                          child: Row(
                          children: [
                          Text('Toko Saya',style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'InterBold'
                          ),)
                                                ],
                                              ),
                        )
        
                  ],
                ),
              ),
              
              
            ],
        
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Pengaturan',style: TextStyle(
                  color: fontAbu,
                  fontSize: 14,
                  fontFamily: 'PoppinsBold'
                ),),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10,),
                decoration: BoxDecoration(
                  color: fontAbu,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: pink_002, width: 2)
                ),
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        
                        Text('Pengaturan Chat',style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'InterBold'
                        ),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Divider(
                      color: pink_001,
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('Pengaturan Notifikasi',style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'InterBold'
                        ),)
                      ],
                    ),
                     SizedBox(height: 5,),
                    Divider(
                      color: pink_001,
                    ),
                    SizedBox(height: 5,),
                        Row(
                      children: [
                        Text('Pengaturan Privasi',style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'InterBold'
                        ),)
                      ],
                    )
        
                  ],
                ),
              ),
              
              
            ],
        
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Bantuan',style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontFamily: 'PoppinsBold'
                ),),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10,),
                decoration: BoxDecoration(
                  color: fontAbu,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: pink_002, width: 2)
                ),
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        
                        Text('Pusat Bantuan',style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'InterBold'
                        ),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Divider(
                      color: pink_001,
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('Peraturan Komunitas',style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'InterBold'
                        ),)
                      ],
                    ),
                     SizedBox(height: 5,),
                    Divider(
                      color: pink_001,
                    ),
                    SizedBox(height: 5,),
                        Row(
                      children: [
                        Text('Kebijakan Sieera',style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'InterBold'
                        ),)
                      ],
                    ),
                     SizedBox(height: 5,),
                    Divider(
                      color: pink_001,
                    ),
                    SizedBox(height: 5,),
                        Row(
                      children: [
                        Text('Ajukan Penghapusan Akun',style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'InterBold'
                        ),)
                      ],
                    )
        
        
                  ],
                ),
              ),
              
              
            ],
        
            )
        
          ],
        ),
      ),
    );
  }
}