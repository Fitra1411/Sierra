
import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar.dart';
import 'package:testing_aplikasi/brand/emina/emina_toko.dart';
import 'package:testing_aplikasi/checkout/checkout.dart';
import 'package:testing_aplikasi/keranjang/keranjang.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class EminaProduct extends StatefulWidget {
  const EminaProduct({super.key});

  @override
  State<EminaProduct> createState() => _EminaProductState();
}

class _EminaProductState extends State<EminaProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 90,
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20,top: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (BuildContext) => Navbar()));
                    }, icon: Image.asset('assets/images/Back Grey.png')),
                
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => FillCart()));
                    }, icon: Image.asset('assets/images/Add Basket Grey.png'))
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: [
                  // Product Info
                  _BuildProductInfo(
                    'assets/images/produk/emina/emina micellar.png', 
                    'Emina Bright Stuff Micellar Water 100ml', 
                    '18000', 
                    '4.8', 
                    '180', 
                    'Emina Bright Stuff Micellar Water dengan kandungan Summer Plum Extract sebagai anti-pollution and brightening agent yang dapat membantu mencerahkan dan melindungi kulit dari polusi',
                  ),
                  Divider(color: fontAbu,),

                  // Product Toko
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => EminaStore()));
                    },
                    child: _BuildProdukToko(
                      'assets/images/brand/emina_logo.png', 
                      'Emina Official Store', 
                      'Kota Lhokseumawe'),
                  ),
                  
                  Divider(color: fontAbu,),

                  // Product Review
                  _BuildProdukReview(
                    '4.8',
                     'Emina Bright Stuff Micellar Water 50ml',
                      'Zikra Multazam',
                       'Selalu repurchased micellar waternya Emina! Karena adem di wajah, gabikin breakout ga kering. Enakeun dan terjangkau harganya. Packing aman bgt dong guardian. Keep it up, guys! Thanks'
                  ),

                ],
              ),
            ),
            SizedBox(height: 60,),
          ],
        ),
      ),



      bottomSheet: Container(
        decoration: BoxDecoration(
          color: pink_004
        ),
        width: double.infinity,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => FillCart()));
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 0, 10, 0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/Add Basket.png',
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 10,),
                    Text('Tambah ke Keranjang', style: TextStyle(
                      fontSize: 11,
                      fontFamily: 'OpenSansBold',
                      color: Colors.white
                    ),)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => CheckoutConfirm()));
              },
              child: Container(
                height: 50,
                color: pink_002,
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  children: [
                    SizedBox(width: 5,),
                    Text('CheckOut', style: TextStyle(
                      fontSize: 11,
                      fontFamily: 'OpenSansBold',
                      color: Colors.white
                    ),)
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

Widget _BuildProductInfo (
  String images,
  String name,
  String price, 
  String rating, 
  String terjual,
  String deskripsi,
  ){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(images),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 15,25, 0),
          child: Text(name,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'OpenSansBold'
          ),),
        ),
        Text(
          'Rp $price',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'OpenSansBold',
            color: pink_002,
          ),),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            children: [
              Icon(Icons.star, color: Colors.yellow, size: 20,),
              Text(rating, style: TextStyle(
                fontSize: 14,
                fontFamily: 'OpenSansBold',
              ),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 20,
                  width: 2,
                  color: fontAbu,
                ),
              ),
              Text(
                '$terjual terjual',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'OpenSansBold',
                  color: fontAbu
                ),
              ),
            ],
          ),
        ),
        Text('Deskripsi Produk',style: TextStyle(
          fontFamily: 'OpenSansBold',
          fontSize: 16,
        ),),
        Padding(
          padding: const EdgeInsets.fromLTRB(5,0,5,20),
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text(deskripsi,style: TextStyle(
              fontSize: 12,
              fontFamily: 'OpenSansRegular',
              color: fontAbu
            ),),
          ),
        ),
      ],
    );
  }

Widget _BuildProdukToko(
  String imageToko,
  String namaToko,
  String lokasi,
) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                imageToko, 
                width: 50, 
                height: 50, 
                fit: BoxFit.cover, // Agar gambar terisi penuh
              ),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Agar teks rata kiri
              children: [
                Text(namaToko, style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'OpenSansBold'
                ),),
                Text(lokasi, style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'OpenSansRegular',
                  color: fontAbu
                ),)
              ],
            )
          ],
        ),
      ),
    ],
  );
}

Widget _BuildProdukReview(
  String rating,
  String namaProduk,
  String namaPengguna,
  String review,

){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Penilaian Produk',style: TextStyle(
              fontFamily: 'OpenSansBold',
              fontSize: 16,
            ),),
        
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 20,),
                  Text(rating, style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'OpenSansBold',
                  ),),
                ],
              ),
            ),
          ],
        ),
      ),

      Padding(
        padding: EdgeInsets.fromLTRB(5, 15, 10, 10),
        child: Text(
          '$namaPengguna : $namaProduk',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'OpenSansBold',
          ),
        ),
      ),

      Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Text(
          review,
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'OpenSansRegular',
            color: fontAbu
          ),
        ),
      )
    ],
  );
}