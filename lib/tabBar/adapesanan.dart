import 'package:flutter/material.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Pesananada1 extends StatefulWidget {
  const Pesananada1({super.key});

  @override
  _Pesananada1State createState() => _Pesananada1State();
}

class _Pesananada1State extends State<Pesananada1> {
  int _selectedIndex = 0; // To track the selected tab index

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
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
                          onPressed: (){},
                          icon: Icon(Icons.arrow_back_ios,color: pink_006,size: 30,),
                          ),
                        SizedBox(width: 20),
                        Text(
                          "Pesanan",
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
                    tabs: <Widget>[
                      Tab(
                        icon: Image.asset(
                          'assets/images/Wallet.png',
                          width: 40,
                          height: 40,
                          
                          color: _selectedIndex == 0
                              ? Color(0xFFF05A7E)
                              : Colors.white,
                        ),
                        child: Text(
                          "Belum Bayar",
                          style: TextStyle(
                            color: _selectedIndex == 0
                                ? Color(0xFFF05A7E)
                                : Colors.white,
                            fontFamily: 'PoppinsMedium',
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Tab(
                        icon: Image.asset(
                          'assets/images/Packing.png',
                          width: 40,
                          height: 40,
                          color: _selectedIndex == 1
                              ? Color(0xFFF05A7E)
                              : Colors.white,
                        ),
                        child: Text(
                          "Dikemas",
                          style: TextStyle(
                            color: _selectedIndex == 1
                                ? Color(0xFFF05A7E)
                                : Colors.white,
                            fontFamily: 'PoppinsMedium',
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Tab(
                        icon: Image.asset(
                          'assets/images/Deliver Food.png',
                          width: 40,
                          height: 40,
                          color: _selectedIndex == 2
                              ? Color(0xFFF05A7E)
                              : Colors.white,
                        ),
                        child: Text(
                          "Dikirim",
                          style: TextStyle(
                            color: _selectedIndex == 2
                                ? Color(0xFFF05A7E)
                                : Colors.white,
                            fontFamily: 'PoppinsMedium',
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Tab(
                        icon: Image.asset(
                          'assets/images/Paid.png',
                          width: 40,
                          height: 40,
                          color: _selectedIndex == 3
                              ? Color(0xFFF05A7E)
                              : Colors.white,
                        ),
                        child: Text(
                          "Selesai",
                          style: TextStyle(
                            color: _selectedIndex == 3
                                ? Color(0xFFF05A7E)
                                : Colors.white,
                            fontFamily: 'PoppinsMedium',
                            fontSize: 10,
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
                 Container(child: adapesanan1(),margin: EdgeInsets.only(left: 10,top: 10,bottom: 260,right: 10),),
                 Container(child:adapesanan2() ,margin: EdgeInsets.only(left: 10,top: 10,bottom: 260,right: 10),),
                 Container(child:adapesanan3() ,margin: EdgeInsets.only(left: 10,top: 10,bottom: 260,right: 10),),
                 Container(child: adapesanan4(),margin: EdgeInsets.only(left: 10,top: 10,bottom: 260,right: 10),
                 )
              ],

          ) ,
        ),
      ),
    );
  }
  Widget adapesanan1() {
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
              SizedBox(height: 3),
              Divider(),
              SizedBox(height: 3),
              Row(
                children: [
                  Icon(Icons.local_shipping, color: Colors.green),
                  SizedBox(width: 8),
                  Text('Metode Pengiriman: Gojek'),
                ],
              ),
            ],
          ),
          SizedBox(height: 3),
          Divider(),
          SizedBox(height: 3),
          // Bagian tombol "Nilai Pesanan"
          Center(
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: pink_002,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: const Text('Batalkan Pesanan',style: TextStyle(color: Colors.white,fontFamily: 'OutfitBold',fontSize: 13),)
            ),
          ),
        ],
      ),
    );
  }


 Widget adapesanan2() {
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
              SizedBox(height: 3),
              Divider(),
              SizedBox(height: 3),
              Row(
                children: [
                  Icon(Icons.local_shipping, color: Colors.green),
                  SizedBox(width: 8),
                  Text('Metode Pengiriman: Gojek'),
                ],
              ),
            ],
          ),
          SizedBox(height: 3),
          Divider(),
          SizedBox(height: 3),
          // Bagian tombol "Nilai Pesanan"
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Row(
                children: [
                  Text('Pesanan anda sedang dikemas,',style: TextStyle(color: Color.fromARGB(255, 116, 116, 116),fontFamily: 'PoppinsMedium',fontSize: 12),),
                ],
              ),
              Row(
                children: [
                  Text('menunggu proses pengiriman',style: TextStyle(color: Color.fromARGB(255, 116, 116, 116),fontFamily: 'PoppinsMedium',fontSize: 12),),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget adapesanan3() {
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
              SizedBox(height: 3),
              Divider(),
              SizedBox(height: 3),
              Row(
                children: [
                  Icon(Icons.local_shipping, color: Color.fromARGB(255, 1, 191, 165),),
                  SizedBox(width: 8),
                  Text('[Sortir Hub] : Pesanan telah dikirim',style: TextStyle(color: Color.fromARGB(255, 1, 191, 165),),)
                ],
              ),
            ],
          ),
          SizedBox(height: 3),
          Divider(),
          SizedBox(height: 3),
          // Bagian tombol "Nilai Pesanan"
          Center(
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: pink_002,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: const Text('Pesanan diterima',style: TextStyle(color: Colors.white,fontFamily: 'OutfitBold',fontSize: 13),)
            ),
          ),
        ],
      ),
    );
  }
  Widget adapesanan4() {
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
              SizedBox(height: 3),
              Divider(),
              SizedBox(height: 3),
              Row(
                children: [
                  Icon(Icons.local_shipping, color: Color.fromARGB(255, 1, 191, 165),),
                  SizedBox(width: 8),
                  Text('Hubungi Penjual',style: TextStyle(color: Color.fromARGB(255, 1, 191, 165),),)
                ],
              ),
            ],
          ),
          SizedBox(height: 3),
          Divider(),
          SizedBox(height: 3),
          // Bagian tombol "Nilai Pesanan"
          Center(
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: pink_002,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: const Text('Beli Lagi',style: TextStyle(color: Colors.white,fontFamily: 'OutfitBold',fontSize: 13),)
            ),
          ),
        ],
      ),
    );
  }
}