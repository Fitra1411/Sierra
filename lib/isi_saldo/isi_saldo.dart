import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class IsiSaldo extends StatefulWidget {
  const IsiSaldo({super.key});

  @override
  State<IsiSaldo> createState() => _IsiSaldoState();
}

class _IsiSaldoState extends State<IsiSaldo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Column(
        children: [
          Container(
            height: 250,
            margin: EdgeInsets.fromLTRB(10,30,10,10),
            decoration: BoxDecoration(
              color: pink_004,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 10),
                  child: Row(
                    children: [
                      IconButton(onPressed:() {
                        Navigator.of(context).pushReplacement (MaterialPageRoute(builder: (BuildContext)=>Navbar()));
                      }, icon: Icon(Icons.arrow_back_ios, color: pink_006)),
                      Text('Isi Saldo', style: TextStyle(color: pink_006, fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'OpensSansBold'),),
                    ],
                  ),
                ),
                Expanded(child: SizedBox(height: 100)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Container(
                    height: 65, width: 200,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular( 10),color: pink_006,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Saldo', style: TextStyle(color: pink_003, fontSize: 18, fontWeight: FontWeight.bold,fontFamily: 'OpensSansBold'),),
                        Text('Rp 0', style: TextStyle(color: pink_004, fontSize: 14,fontFamily: 'OpensSansBold'),),
                      ],
                    ),
                  ),
                )
              ],
            ),
            ),
            Column(
              children: [

                // Nominal Saldo.......................
                Container(
                  width: double.infinity,
                  height: 100,
                  margin: EdgeInsets.fromLTRB(20,0,20,5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: fontAbu)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40,20,0,10),
                        child: Text(
                          'Pilih Nominal Saldo',
                          style: TextStyle(color: fontAbu, fontSize: 14,fontFamily: 'OutfitBold'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                        width: double.infinity,
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: fontAbu)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Rp. 0',
                            hintStyle: TextStyle(color: fontAbu, fontSize: 12,fontFamily: 'OutfitBold'),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10,bottom: 15),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                // Metode Pembayaran.......................
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(20,0,20,0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: fontAbu)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40,20,0,5),
                        child: Text(
                          'Pilih Metode Pembayaran',
                          style: TextStyle(color: fontAbu, fontSize: 14,fontFamily: 'OutfitBold'),
                        ),
                      ),
                      // GARIS
                      Container(
                        color: Colors.grey,
                        width: double.infinity,
                        height: 1,
                        margin: EdgeInsets.only(left: 40,right: 40),
                      ),

                      // Dana.......................
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5,0, 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(40, 0, 15, 0),
                              child: Image.asset('assets/images/Pembayaran/Dana.png', width: 40,height: 20,),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text('Dana', style: TextStyle(fontSize: 14,fontFamily: 'InterBold'),),
                              Text('Bayar dengan DANA', style: TextStyle(fontSize: 12,fontFamily: 'InterRegular'),),
                            ],),
                            Expanded(child: SizedBox(width: 20,)),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon( Icons.arrow_forward_ios, color: fontAbu, size: 20),
                            ),
                          ],
                        ),
                      ),
                      // GARIS  2
                      Container(
                        color: Colors.grey,
                        width: double.infinity,
                        height: 1,
                        margin: EdgeInsets.only(left: 40,right: 40),),

                      // OVO.......................
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5,0, 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(40, 0, 15, 0),
                              child: Image.asset('assets/images/Pembayaran/OVO.png', width: 40,height: 20,),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text('OVO', style: TextStyle(fontSize: 14,fontFamily: 'InterBold'),),
                              Text('Bayar dengan OVO', style: TextStyle(fontSize: 12,fontFamily: 'InterRegular'),),
                            ],),
                            Expanded(child: SizedBox(width: 20,)),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon( Icons.arrow_forward_ios, color: fontAbu, size: 20),
                              
                            ),
                            

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
              ],
            )
        ],
      ),

    );
  }
}