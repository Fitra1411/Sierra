import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar.dart';
import 'package:testing_aplikasi/produk.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class EmptyCart extends StatefulWidget {
  const EmptyCart({super.key});

  @override
  State<EmptyCart> createState() => _EmptyCartState();
}

class _EmptyCartState extends State<EmptyCart> {
    bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              width: double.infinity,
              height: 90,
              margin: EdgeInsets.fromLTRB(10,10,10,10),
              decoration: BoxDecoration(
                color: pink_004,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Navbar()));
                        },
                        icon: Icon(Icons.arrow_back_ios,size: 20,),
                        color: pink_006,
                      ),
                      Expanded(
                        child: Text(
                          'Keranjang Saya',
                          style: TextStyle(
                            fontSize: 20,
                            color: pink_006,
                            fontFamily: 'OutfitSemiBold',
                          ),
                        ),
                      ),
            
                      // Chat Icon
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const EmptyCart()));
                        }, icon: Image.asset('assets/images/Messaging.png',width: 30,height: 30,)),
                      )
                    ],
                  ),
                Row(
                  children: [
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap ,
                      value: isChecked, onChanged: (bool?value){
                      setState(() {
                        isChecked = value!;
                      });
                    },
                    activeColor: const Color(0xFF921A40),),
                    Text('Pilih Semua',style: TextStyle(color: pink_006,fontFamily: 'OutfitSemiBold',fontSize: 12),),
                  ],
                )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Image.asset('assets/images/empty_cart.png',width: 200,height: 200),
                Text('Belum ada produk',
                  style: TextStyle(
                    fontFamily: 'OutfitRegular',
                    fontSize: 12,
                    color: pink_003,) ,),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    height: 30,
                    width: 110,
                    decoration: BoxDecoration(
                      color: pink_002,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(onPressed:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RecomendationProduct()));
                    }, child: Text('Cari Produk',style: TextStyle(color: pink_006,fontFamily: 'OutfitBold',fontSize: 13),)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}