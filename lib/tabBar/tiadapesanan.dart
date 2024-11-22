import 'package:flutter/material.dart';
import 'package:testing_aplikasi/NavBar/navbar.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class Pesanan1 extends StatefulWidget {
  const Pesanan1({super.key});

  @override
  _Pesanan1State createState() => _Pesanan1State();
}

class _Pesanan1State extends State<Pesanan1> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext)=>Navbar()));
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: pink_006,
                          size: 25,
                        ),
                      ),
                      const SizedBox(width: 0),
                      const Text(
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
                  controller: _tabController,
                  indicatorColor: pink_006,
                  tabs: [
                    _BuildTabBar(
                      icon: 'assets/images/icon pesanan/Wallet.png',
                      title: 'Bayar',
                      isSelected: _tabController.index == 0,
                    ),
                    _BuildTabBar(
                      icon: 'assets/images/icon pesanan/Packing.png',
                      title: 'Dikemas',
                      isSelected: _tabController.index == 1,
                    ),
                    _BuildTabBar(
                      icon: 'assets/images/icon pesanan/Deliver Food.png',
                      title: 'Dikirim',
                      isSelected: _tabController.index == 2,
                    ),
                    _BuildTabBar(
                      icon: 'assets/images/icon pesanan/Paid.png',
                      title: 'Selesai',
                      isSelected: _tabController.index == 3,
                    ),
                  ],
                  onTap: (index) {
                    setState(() {}); // Perbarui status tab
                  },
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            Center(child: EmptyOrderWidget()),
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
  const EmptyOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/keranjang.png', width: 200),
        const SizedBox(height: 16),
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

class _BuildTabBar extends StatelessWidget {
  final String icon;
  final String title;
  final bool isSelected;

  const _BuildTabBar({
    required this.icon,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            icon,
            width: 30,
            color: isSelected ? pink_006 : pink_002, // Warna ikon berdasarkan status tab
          ),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'PoppinsMedium',
              fontSize: 11,
              color: isSelected ? pink_006 : pink_002, // Warna teks berdasarkan status tab
            ),
          ),
        ],
      ),
    );
  }
}
