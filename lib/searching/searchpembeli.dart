import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar.dart';
import 'package:testing_aplikasi/keranjang/keranjang.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class SearchPembeli extends StatefulWidget {
  const SearchPembeli({super.key});

  @override
  State<SearchPembeli> createState() => _SearchPembeliState();
}

class _SearchPembeliState extends State<SearchPembeli> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        scrollDirection:Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 15, right: 10,bottom: 15),
              child: Row(
                children: [
                  // Back to Homepage
                  IconButton(onPressed:() {
                    Navigator.of(context).pushReplacement (MaterialPageRoute(builder: (BuildContext)=>Navbar()));
                  }, icon: Image.asset('assets/images/Back Grey.png', width: 35, height: 35)),
                  // SearchBar
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: fontAbu, width: 2),
                        color: pink_006,
                        borderRadius: BorderRadius.circular(20),
                        ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,bottom: 5,right: 13),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:'Cari Produk atau Toko',
                            hintStyle: TextStyle(color: fontAbu, fontSize: 15,fontFamily: 'OpensSansBold'),
                          ),
                        ),
                      ),
                      ),
                  ),
                    // Keranjang
                    IconButton(onPressed:() {
                      Navigator.of(context).pushReplacement (MaterialPageRoute(builder: (BuildContext)=>FillCart()));
                    }, icon: Image.asset('assets/images/Add Basket Grey.png', width: 35, height: 35)),
                ],
              ),
            ),
            Text('Kategori Pencarian',
            style: TextStyle(
              fontFamily: 'InterBold',
              fontSize: 16,
              fontWeight: FontWeight.bold),),

            // Kategori Produk
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _jenisproduk('assets/images/produk/emina/emina micellar.png', 'Micellar Water'),
                _jenisproduk('assets/images/produk/emina/emina cushion.jpg', 'Cushion'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _jenisproduk('assets/images/produk/focallure/focallure eyebrow.jpg', 'Eye Shadow'),
                _jenisproduk('assets/images/produk/emina/emina concelear.jpg', 'Concelear'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _jenisproduk('assets/images/produk/focallure/focallure blush.jpg', 'Blush'),
                _jenisproduk('assets/images/produk/emina/emina glossy.jpg', 'Lip Gloss'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _jenisproduk('assets/images/produk/wardah/wardah eyeliner.jpg', 'Eyeliner'),
                _jenisproduk('assets/images/produk/wardah/wardah foundation.jpeg', 'Foundation'),
              ],
            ),          ],
        ),
      ),
    );
  }
}

Widget _jenisproduk (String image, String title){
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
    child: Container(
      width: 130,
      height: 140,
      decoration: BoxDecoration(
        border: Border.all(color: fontAbu, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Container(
          margin: EdgeInsets.fromLTRB(5, 5, 5, 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: fontAbu, width: 2),
          ),
          child: Image.asset(image, width: 120, height: 85)),
        Text(title, style: TextStyle(fontSize: 12, fontFamily: 'OutfitBold',fontWeight: FontWeight.bold),),
      ],),
    ),
  );
}