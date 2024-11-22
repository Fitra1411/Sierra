import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Penilaian1 extends StatefulWidget {
  const Penilaian1({super.key});

  @override
  _Pesanan1State createState() => _Pesanan1State();
}

class _Pesanan1State extends State<Penilaian1> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
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
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Navbar()));
                          },
                          icon: Icon(Icons.arrow_back_ios,color: pink_006,size: 30,),
                          ),
                        SizedBox(width: 5),
                        Text(
                          "Beri Penilaian",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PoppinsBold',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                bottom: TabBar(
                  unselectedLabelColor: pink_002,
                  indicatorColor: pink_006,
                  labelColor: pink_006,
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text('Belum Dinilai',style: TextStyle(fontFamily: 'PoppinsMedium',fontSize: 12)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom :10),
                      child: Text('Sudah Dinilai',style: TextStyle(fontFamily: 'PoppinsMedium',fontSize: 12)),
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
          ],
        ),
      ),
    ));
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