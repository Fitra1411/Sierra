import 'package:flutter/material.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Penilaian2 extends StatefulWidget {
  const Penilaian2({super.key});

  @override
  _Penilaian2State createState() => _Penilaian2State();
}

class _Penilaian2State extends State<Penilaian2> {
  int _selectedIndex = 0; // Untuk melacak tab yang dipilih

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: pink_006,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(250),
            child: Container(
              margin: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: AppBar(
                  backgroundColor: pink_004,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_back_ios,color: pink_006,size: 30,),
                          ),

                        const SizedBox(width: 20),
                        const Text(
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
                    onTap: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    tabs: [
                      Tab(
                        child: Text(
                          "Belum Dinilai",
                          style: TextStyle(
                            color: _selectedIndex == 0
                                ? const Color(0xFFF05A7E)
                                : Colors.white,
                            fontFamily: 'PoppinsMedium',
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Sudah Dinilai",
                          style: TextStyle(
                            color: _selectedIndex == 1
                                ? const Color(0xFFF05A7E)
                                : Colors.white,
                            fontFamily: 'PoppinsMedium',
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body:TabBarView(
              children: [
                 Container(child: buildOrderCard(),margin: EdgeInsets.only(left: 10,top: 10,bottom: 280,right: 10),),
                 Container(child:buildsudahorder() ,margin: EdgeInsets.only(left: 10,top: 10,bottom: 320,right: 10),
                 )
              ],

          ) ,
        ),
      ),
    );
  }

  Widget buildOrderCard() {
    return Container(
      width: 350,
      
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: pink_003, // Warna border sesuai keinginan
          width: 2, // Ketebalan border
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: Text('MU_Store',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),),
          ),
          const SizedBox(height: 3),
          const Divider(),
          const SizedBox(height: 3),
          // Bagian atas dengan gambar dan nama produk
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                
                decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage('assets/images/produk//emina/emina blush.jpg'),
                      fit: BoxFit.cover)
                      //ez
                      
                    ),
              
                    
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    
                    Text(
                      'Emina CheekLit Blush On',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 8),
          // Bagian total pesanan
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Total Pesanan:',
                style: TextStyle(fontSize: 14),
              ),
              Text(
                'Rp. 85.000',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(),
          const SizedBox(height: 8),
          // Bagian metode pembayaran dan pengiriman
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Row(
                children: [
                  Icon(Icons.payment, color: Colors.blue),
                  SizedBox(width: 8),
                  Text('Metode Pembayaran: DANA'),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.local_shipping, color: Colors.green),
                  SizedBox(width: 8),
                  Text('Metode Pengiriman: Gojek'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Bagian tombol "Nilai Pesanan"
          Center(
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Nilai Pesanan'),
            ),
          ),
        ],
      ),
    );
  }
}

 Widget buildsudahorder() {
    return Container(
      width: 350,
      
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: pink_003, // Warna border sesuai keinginan
          width: 2, // Ketebalan border
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: Text('MU_Store',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),),
          ),
          const SizedBox(height: 3),
          const Divider(),
          const SizedBox(height: 3),
          // Bagian atas dengan gambar dan nama produk
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                
                decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage('assets/images/produk//emina/emina blush.jpg'),
                      fit: BoxFit.cover)
                      //ez
                      
                    ),
              
                    
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Emina CheekLit Blush On',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(),
          const SizedBox(height: 8),
          // Bagian total pesanan
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Total Pesanan:',
                style: TextStyle(fontSize: 14),
              ),
              Text(
                'Rp. 85.000',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(),
          const SizedBox(height: 8),
          // Bagian metode pembayaran dan pengiriman
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Row(
                children: [
                  Icon(Icons.payment, color: Colors.blue),
                  SizedBox(width: 8),
                  Text('Metode Pembayaran: DANA'),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.local_shipping, color: Colors.green),
                  SizedBox(width: 8),
                  Text('Metode Pengiriman: Gojek'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Bagian tombol "Nilai Pesanan"
          
        ],
      ),
    );
  }