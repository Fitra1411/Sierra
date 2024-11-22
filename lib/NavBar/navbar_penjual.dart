import 'package:flutter/material.dart';
import 'package:testing_aplikasi/homepage_penjual.dart';
import 'package:testing_aplikasi/lainnya/more_penjual.dart';
import 'package:testing_aplikasi/penjual/pesanan/perlu_dikirim.dart';
import 'package:testing_aplikasi/penjual/tambah_produk/produk_penjual.dart';
import 'package:testing_aplikasi/utils/colors.dart';

class NavbarPenjual extends StatefulWidget {
  const NavbarPenjual({super.key});

  @override
  State<NavbarPenjual> createState() => _NavbarPenjualState();
}

class _NavbarPenjualState extends State<NavbarPenjual> {
  int currentIndex = 0;

  final List<Widget> _pages = [
    const Homepage_Penjual(),
    const Produkpenjual(),
    OrderPage(),
    const MorePenjual(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pink_006,
      body: _pages[currentIndex],
      bottomNavigationBar: Container(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            backgroundColor: pink_004,
            selectedItemColor: pink_002,
            unselectedItemColor: pink_006,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              _buildNavItem(
                iconPath: 'assets/images/Home Page.png',
                label: 'Home',
                index: 0,
              ),
              _buildNavItem(
                iconPath: 'assets/images/Product.png',
                label: 'Product',
                index: 1,
              ),
              _buildNavItem(
                iconPath: 'assets/images/Online Shopping.png',
                label: 'Orderan',
                index: 2,
              ),
              _buildNavItem(
                iconPath: 'assets/images/More.png',
                label: 'More',
                index: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem({
    required String iconPath,
    required String label,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        iconPath,
        width: 35,
        height: 35,
        color: currentIndex == index ? pink_002 : pink_006,
      ),
      label: label,
    );
  }
}
