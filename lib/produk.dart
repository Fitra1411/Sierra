import 'package:flutter/material.dart';
import 'package:testing_aplikasi/homepage.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class RecomendationProduct extends StatefulWidget {
  const RecomendationProduct({super.key});

  @override
  State<RecomendationProduct> createState() => _RecomendationProductState();
}

class _RecomendationProductState extends State<RecomendationProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: pink_004,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Text('Produk Baru', style: TextStyle(color: pink_006, fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'OpensSansBold'),),
                    Expanded(child: SizedBox(width: 100,)),
                    Image.asset('assets/images/Add Basket.png',width: 30,height: 30,),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Image.asset('assets/images/Search.png', width: 30, height: 30,),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisSpacing: 2,
                mainAxisSpacing: 4,
                crossAxisCount: 2,
                padding: const EdgeInsets.only(top: 20),
                children: [
                  _buildInfoContainer('assets/images/produk/emina/emina blush2.jpg', 'Lipstick', 'Rp 50.000', Icons.star, '4.5'),
                  _buildInfoContainer('assets/images/produk/emina/emina glossy.jpg', 'Lipstick', 'Rp 50.000', Icons.star, '4.5'),
                  _buildInfoContainer('assets/images/produk/emina/emina concelear.jpg', 'Lipstick', 'Rp 50.000', Icons.star, '4.5'),
                  _buildInfoContainer('assets/images/produk/emina/emina sunscreen.jpg', 'Lipstick', 'Rp 50.000', Icons.star, '4.5'),
                ],
              )
            )
          ],
        ),
      ),

    );
  }
}


Widget _buildInfoContainer(String images,String title, String value, IconData icon,String data) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
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
          Row(
            children: [
              Icon(icon,color: Colors.yellow,size: 16,),
              Text(data)
            ],
          ),
        ],
      ),
    ),
  );
}