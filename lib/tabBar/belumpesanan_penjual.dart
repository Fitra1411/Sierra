import 'package:flutter/material.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Belummesan2 extends StatefulWidget {
  const Belummesan2({super.key});

  @override
  _Belummesan2State createState() => _Belummesan2State();
}

class _Belummesan2State extends State<Belummesan2> {
  int _selectedIndex = 0; // To track the selected tab index

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
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
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios,color: pink_006,size: 30,),
                          ),
                        SizedBox(width: 20),
                        Text(
                          "Pesanan",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OutfitBold',
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  bottom: TabBar(
                    onTap: (index) {
                      setState(() {
                        _selectedIndex = index;
                        
                        
                      });
                    },
                    tabs: <Widget>[
                      Tab(
                        child: Text(
                          "Perlu Dikirim",
                          style: TextStyle(
                            color: _selectedIndex == 0
                                ? pink_002
                                : Colors.white,
                            fontFamily: 'PoppinsMedium',
                            fontSize: 12,
                            
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Dalam Pengiriman",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: _selectedIndex == 1
                                ? pink_002
                                : Colors.white,
                            fontFamily: 'PoppinsMedium',
                            fontSize: 12,
                            
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Selesai",
                          
                          style: TextStyle(
                            color: _selectedIndex == 2
                                ? pink_002
                                : Colors.white,
                            fontFamily: 'PoppinsMedium',
                            fontSize: 12,
                            
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [belumadapesan1()],
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [belumadapesan2()],
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [belumadapesan3()],
              ),
            ],
          ),
        ),
      )
    );
  }
  Widget belumadapesan1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/keranjang.png',
          width: 250,
          height: 250,
        ),
        Text(
          "Belum ada pesanan",
          style: TextStyle(
            color: pink_002,
            fontFamily: 'OutfitRegular',
            fontSize: 12,
          ),
        ),
      ]
    );
  }
  Widget belumadapesan2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/keranjang.png',
          width: 250,
          height: 250,
        ),
        Text(
          "Belum ada pesanan",
          style: TextStyle(
            color: pink_002,
            fontFamily: 'OutfitRegular',
            fontSize: 12,
          ),
        ),
      ]
    );
  }
  Widget belumadapesan3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/keranjang.png',
          width: 250,
          height: 250,
        ),
        Text(
          "Belum ada pesanan",
          style: TextStyle(
            color: pink_002,
            fontFamily: 'OutfitRegular',
            fontSize: 12,
          ),
        ),
      ]
    );
  }
}