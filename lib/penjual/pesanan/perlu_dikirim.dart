import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar_penjual.dart';
import 'package:testing_aplikasi/utils/colors.dart';
// import 'package:flutter_application_1/utils/colors.dart';

class Perludikirim2 extends StatefulWidget {
  const Perludikirim2({super.key});

  @override
  State<Perludikirim2> createState() => _Perludikirim2State();
}

class _Perludikirim2State extends State<Perludikirim2> {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: OrderPage(),
    );
  }
}

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: pink_006,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: Container(
            margin: EdgeInsets.fromLTRB(10,30,10,10), 
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: AppBar(
                backgroundColor: pink_004,
                title: Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>NavbarPenjual()));
                    }, icon: Icon(Icons.arrow_back_ios,color: pink_006,)),
                    
                    Text('Pesanan', style: TextStyle(fontFamily: 'OutfitSemiBold',color: Colors.white)),
                  ],
                ),
                bottom: TabBar(
                  unselectedLabelColor: pink_002,
                  indicatorColor: pink_006,
                  labelColor: pink_006,
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text('Perlu Dikirim',style: TextStyle(fontFamily: 'PoppinsMedium',fontSize: 12)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom :10),
                      child: Text('Dikirim',style: TextStyle(fontFamily: 'PoppinsMedium',fontSize: 12)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom : 10),
                      child: Text('Selesai',style: TextStyle(fontFamily: 'PoppinsMedium',fontSize: 12)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView( 
          children: [
            Center(child: EmptyOrderWidget()),
            Center(child: EmptyOrderWidget()),
            Center(child: EmptyOrderWidget()),
          ],
        ),
      ),
    );
  }
}

class EmptyOrderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/keranjang.png', width: 200),
        SizedBox(height: 16),
        Text(
          'Belum ada pesanan',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}